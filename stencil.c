#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include "mpi.h"

// Define globals
#define OUTPUT_FILE "stencil.pgm"
#define MASTER 0

void stencil(const int nx, const int ny, const int width, const int height,  const int right, const int left,
             float* image, float* tmp_image);
void init_image(const int nx, const int ny, const int width, const int height, float* image);

void output_image(const char* file_name, const int nx, const int ny,
                  const int width, const int height, float* image);
double wtime(void);
int calc_ny_from_rank(int ny, int rank, int size);
int main(int argc, char* argv[])
{
  int rank;              /* the rank of this process */
  int left;              /* the rank of the process to the left */
  int right;             /* the rank of the process to the right */
  int size;              /* number of processes in the communicator */
  int tag = 0;           /* scope for adding extra information to a message */
  MPI_Status status;     /* struct used by MPI_Recv */
  int local_ny;          /* number of rows apportioned to this rank */
  int local_nx;          /* number of columns apportioned to this rank */
  int remote_ny;      /* number of columns apportioned to a remote rank */
  float *local_image;             /* local temperature grid at time t     */
  float *local_image_tmp;             /* local temperature grid at time t     */
  float* image;
  /*
  ** MPI_Init returns once it has started up processes
  ** Get size of cohort and rank for this process
  */
  MPI_Init( &argc, &argv );
  MPI_Comm_size( MPI_COMM_WORLD, &size );
  MPI_Comm_rank( MPI_COMM_WORLD, &rank );

  // Check usage
  if (argc != 4) {

    fprintf(stderr, "Usage: %s nx ny niters\n", argv[0]);
    exit(EXIT_FAILURE);
  }

  // Initiliase problem dimensions from command line arguments
  int nx = atoi(argv[1]);
  int ny = atoi(argv[2]);
  int niters = atoi(argv[3]);
  int width = nx + 2;
  int height = ny + 2;

    /*
    determine left and right ranks
  */
  left = (rank == MASTER) ? (size - 1) : (rank - 1);
  right = (rank + 1) % size;

  if(rank==0) left = MPI_PROC_NULL;
  if(rank==size-1) right = MPI_PROC_NULL;
    /*
    Local dimensions of image
  */
  local_ny = calc_ny_from_rank(ny, rank, size);
  local_nx = nx;


  // check if too many workers
  if (local_ny < 1) {
    fprintf(stderr,"Error: too many processes:- local_nx < 1\n");
    MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
  }


  /**
    Local padded slice of image
  **/
  int local_height = local_ny + 2;
  int local_width = local_nx + 2;
  local_image = (float*)malloc(sizeof(float) * local_height * local_width);
  local_image_tmp = (float*)malloc(sizeof(float) * local_height * local_width);


  // Master
  if(rank==MASTER){
    //init full image
    image = malloc(sizeof(float) * width * height);
    init_image(nx, ny, width, height, image);
  }

  int sendcounts[size];
  int displacements[size];
  for(int worker = 0; worker<size; worker++){
    remote_ny = calc_ny_from_rank(ny, worker, size);
    sendcounts[worker] = local_width * remote_ny;
    displacements[worker] = worker * local_width * local_ny;
  }


  MPI_Scatterv(image+width, sendcounts, displacements, MPI_FLOAT, local_image + local_width, local_width*local_ny, MPI_FLOAT, 0, MPI_COMM_WORLD);

  // perform stencil
  double tic = wtime();
  for (int t = 0; t < niters; ++t) {
    stencil(local_nx, local_ny, local_width, local_height, right, left, local_image, local_image_tmp);
    stencil(local_nx, local_ny, local_width, local_height, right, left, local_image_tmp, local_image);
  }


  double toc = wtime() - tic;
  double time;

  MPI_Gatherv(local_image+local_width, local_width*local_ny, MPI_FLOAT, image+width, sendcounts, displacements, MPI_FLOAT, 0, MPI_COMM_WORLD);
  MPI_Reduce(&toc, &time, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);

  if(rank==MASTER){
    // Output
    printf(" runtime: %lf s\n", time);
    output_image(OUTPUT_FILE, nx, ny, width,height, image);
    free(image);
  }
  MPI_Finalize();
  return 0;
}

void stencil(const int nx, const int ny, const int width, const int height, const int right, const int left, float* restrict image, float* restrict tmp_image){
    MPI_Status status;
    //halo exchange
     //send left, receive right
    MPI_Sendrecv(image+width, width, MPI_FLOAT, left, 6,
		 image+((height-1)*width), width, MPI_FLOAT, right, 6,
		 MPI_COMM_WORLD, &status);

    //send right, receive left
    MPI_Sendrecv(image+((height-2)*width), width, MPI_FLOAT, right, 9,
		 image, width, MPI_FLOAT, left, 9,
		 MPI_COMM_WORLD, &status);

    for (int j = 1; j < ny + 1; ++j) {
      for (int i = 1; i < nx + 1; ++i) {
        tmp_image[i+j*width]= 0.6f*image[i+j*width] + 0.1f*(image[i+(j-1)*width] + image[i+(j+1)*width] + image[(i-1)+j*width] + image[(i+1)+j*width]);
      }
    }
}

// Create the input image
void init_image(const int nx, const int ny, const int width, const int height, float* image)
{
  // Zero everything
  for (int j = 0; j < ny + 2; ++j) {
    for (int i = 0; i < nx + 2; ++i) {
      image[j + i * height] = 0.0;
    }
  }

  const int tile_size = 64;
  // checkerboard pattern
  for (int jb = 0; jb < ny; jb += tile_size) {
    for (int ib = 0; ib < nx; ib += tile_size) {
      if ((ib + jb) % (tile_size * 2)) {
        const int jlim = (jb + tile_size > ny) ? ny : jb + tile_size;
        const int ilim = (ib + tile_size > nx) ? nx : ib + tile_size;
        for (int j = jb + 1; j < jlim + 1; ++j) {
          for (int i = ib + 1; i < ilim + 1; ++i) {
            image[j + i * height] = 100.0;
          }
        }
      }
    }
  }
}

// Routine to output the image in Netpbm grayscale binary image format
void output_image(const char* file_name, const int nx, const int ny,
                  const int width, const int height, float* image){
  // Open output file
  FILE* fp = fopen(file_name, "w");
  if (!fp) {
    fprintf(stderr, "Error: Could not open %s\n", OUTPUT_FILE);
    exit(EXIT_FAILURE);
  }

  // Ouptut image header
  fprintf(fp, "P5 %d %d 255\n", nx, ny);

  // Calculate maximum value of image
  // This is used to rescale the values
  // to a range of 0-255 for output
  float maximum = 0.0f;
  for (int j = 1; j < ny + 1; ++j) {
    for (int i = 1; i < nx + 1; ++i) {
      if (image[j + i * height] > maximum) maximum = image[j + i * height];
    }
  }

  // Output image, converting to numbers 0-255
  for (int j = 1; j < ny + 1; ++j) {
    for (int i = 1; i < nx + 1; ++i) {
      fputc((char)(255.0 * image[j + i * height] / maximum), fp);
    }
  }

  // Close the file
  fclose(fp);
}

// Get the current time in seconds since the Epoch
double wtime(void)
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec + tv.tv_usec * 1e-6;
}

int calc_ny_from_rank(int ny, int rank, int size)
{
  int local_ny;

  local_ny = ny / size;       /* integer division */
  if ((ny % size) != 0) {  /* if there is a remainder */
    if (rank == size - 1)
      local_ny += ny % size;  /* add remainder to last rank */
  }

  return local_ny;
}

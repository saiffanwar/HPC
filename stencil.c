#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>
#include <mpi.h>
// Define output file name
#define OUTPUT_FILE "stencil.pgm"
#define MASTER 0

int calc_ncols_from_rank(int rank, int size);


void stencil(const int nx, const int ny, const int width, const int height,
             float* image, float* tmp_image);
void init_image(const int nx, const int ny, const int width, const int height,
                float* image, float* tmp_image);
void output_image(const char* file_name, const int nx, const int ny,
                  const int width, const int height, float* image);
double wtime(void);

int ii,jj;             /* row and column indices for the grid */
int kk;                /* index for looping over ranks */
int rank;              /* the rank of this process */
int left;              /* the rank of the process to the left */
int right;             /* the rank of the process to the right */
int size;              /* number of processes in the communicator */
int tag = 0;           /* scope for adding extra information to a message */
MPI_Status status;     /* struct used by MPI_Recv */
int local_nrows;       /* number of rows apportioned to this rank */
int local_ncols;       /* number of columns apportioned to this rank */
int remote_ncols;      /* number of columns apportioned to a remote rank */
float *subgrid;       /* local temperature grid at time t     */
float *sendbuf;       /* buffer to hold values to send */
float *recvbuf;       /* buffer to hold received values */

int main(int argc, char* argv[])
{

  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &size);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);

  int nx = atoi(argv[1]);
  int ny = atoi(argv[2]);
  int niters = atoi(argv[3]);

  // we pad the outer edge of the image to avoid out of range address issues in
  // stencil
  int width = nx + 2;
  int height = ny + 2;

  left = (rank == MASTER) ? (rank + size - 1) : (rank - 1);
  right = (rank + 1) % size;

  if (nx % size != 0){
    if (rank != size -1){
      local_ncols += nx % size;
    }
  } else {
    local_ncols = nx/size;
  }
  if (local_ncols < 1) {
    fprintf(stderr,"Error: too many processes:- local_ncols < 1\n");
    MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
  }
  local_nrows = height;

  // allocating local grid space including halo regions

  subgrid = (float*)malloc(sizeof(float)*local_nrows * (local_ncols + 2));
  sendbuf = (float*)malloc(sizeof(float) * local_nrows);
  recvbuf = (float*)malloc(sizeof(float) * local_nrows);

  //initialise subgrid
  for(ii=0;ii<local_nrows;ii++) {
    for(jj=0; jj<local_ncols + 2; jj++) {
      if (jj > 0 && jj < (local_ncols + 1))
	       subgrid[ii * (local_ncols + 2) + jj] = (float)rank;
      else if (jj == 0 || jj == (local_ncols + 1))
	       subgrid[ii * (local_ncols + 2) + jj] = -1.0f;
    }
  }


  // Check usage
  if (argc != 4) {
    fprintf(stderr, "Usage: %s nx ny niters\n", argv[0]);
    exit(EXIT_FAILURE);
    MPI_Finalize();
  }

  // Initiliase problem dimensions from command line arguments


  // Allocate the image at following, of sizes including extra space for halo regions
  float* image = malloc(sizeof(float) * (width * height));
  float* tmp_image = malloc(sizeof(float) * (width * height));


  // Set the input image
  init_image(nx, ny, width, height, image, tmp_image);

  // Call the stencil kernel
  double tic = wtime();
  for (int t = 0; t < niters; ++t) {
    stencil(nx, ny, width, height, image, tmp_image);
    stencil(nx, ny, width, height, tmp_image, image);
    }
    double toc = wtime();

    // Output
    printf("------------------------------------\n");
    printf(" runtime: %lf s\n", toc - tic);
    printf("------------------------------------\n");

    output_image(OUTPUT_FILE, nx, ny, width, height, image);
    free(image);
    free(tmp_image);
  }

  void stencil(const int nx, const int ny, const int width, const int height,
               float* restrict image, float* restrict tmp_image)
  //with floating points
  {

  for (int i = 1; i < nx + 1; ++i) {
    for (int j = 1; j < ny + 1; ++j) {
      tmp_image[j + i * height] =  image[j+i* height] * 0.6f + image[j+ (i - 1) * height] * 0.1f + image[j+ (i + 1) * height] * 0.1f + image[j - 1 + i * height] * 0.1f + image[j + 1 + i * height] * 0.1f;
    }
}
  }

  void halo_exchange(int rank) {
    for(ii=0; ii < local_nrows; ii++) {
      sendbuf[ii] = subgrid[ii * (local_ncols + 2) + 1];
    MPI_Sendrecv(sendbuf, local_nrows, MPI_FLOAT, left, tag, recvbuf, local_nrows, MPI_DOUBLE, right, tag, MPI_COMM_WORLD, &status);
    }
    for(ii=0; ii < local_nrows; ii++){
      subgrid[ii * (local_ncols + 2) + local_ncols + 1] = recvbuf[ii];
    }
    /* send to the right, receive from left */
    for(ii=0; ii < local_nrows; ii++){
      sendbuf[ii] = subgrid[ii * (local_ncols + 2) + local_ncols];
    MPI_Sendrecv(sendbuf, local_nrows, MPI_DOUBLE, right, tag, recvbuf, local_nrows, MPI_DOUBLE, left, tag, MPI_COMM_WORLD, &status);
    }
    for(ii=0; ii < local_nrows; ii++){
      subgrid[ii * (local_ncols + 2)] = recvbuf[ii];
    }
  }

  // Create the input image
  void init_image(const int nx, const int ny, const int width, const int height,
                  float* image, float* tmp_image)
  {
    // Zero everything
    for (int j = 0; j < ny + 2; ++j) {
      for (int i = 0; i < nx + 2; ++i) {
        image[j + i * height] = 0.0f;
        tmp_image[j + i * height] = 0.0f;
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
            image[j + i * height] = 100.0f;
          }
        }
      }
    }
  }
}

// Routine to output the image in Netpbm grayscale binary image format
void output_image(const char* file_name, const int nx, const int ny,
                  const int width, const int height, float* image)
{
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
  double maximum = 0.0;
  for (int j = 1; j < ny + 1; ++j) {
    for (int i = 1; i < nx + 1; ++i) {
      if (image[j + i * height] > maximum) maximum = image[j + i * height];
    }
  }

  // Output image, converting to numbers 0-255
  for (int j = 1; j < ny + 1; ++j) {
    for (int i = 1; i < nx + 1; ++i) {
      fputc((char)(255.0f * image[j + i * height] / maximum), fp);
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

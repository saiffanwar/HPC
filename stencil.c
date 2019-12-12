#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>
#include <mpi.h>


// Define output file name
#define OUTPUT_FILE "stencil.pgm"
#define MASTER 0

void stencil(const int nx, const int ny, const int width, const int height, const int right, const int left,
             float* image, float* tmp_image);
void init_image(const int nx, const int ny, const int width, const int height,
                float* image);
void output_image(const char* file_name, const int nx, const int ny,
                  const int width, const int height, float* image);
// void halo_exchange(const int width, const int height, const int right, const int left, float* restrict image, float* restrict tmp_image);
int calc_ny_from_rank(int ny, int rank, int size);

double wtime(void);



int main(int argc, char* argv[])
{
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
  float *tmp_subgrid;
  float* image;
  int var_nx;


  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &size);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);

  // Check usage
  if (argc != 4) {
    fprintf(stderr, "Usage: %s nx ny niters\n", argv[0]);
    exit(EXIT_FAILURE);
  }

  int nx = atoi(argv[1]);
  int ny = atoi(argv[2]);
  int niters = atoi(argv[3]);

  int width = nx + 2;
  int height = ny + 2;

  left = (rank == MASTER) ? (size - 1) : (rank - 1);
  right = (rank + 1) % size;

  if(rank==0) left = MPI_PROC_NULL;
  if(rank==size-1) right = MPI_PROC_NULL;

  local_ncols = calc_ny_from_rank(ny, rank, size);
  local_nrows = nx;


  // check if too many processes
  if (local_ncols < 1) {
    fprintf(stderr,"Error: too many processes:- local_ncols < 1\n");
    MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
  }


  // // Allocate the image at following, of sizes including extra space for halo regions


  subgrid = (float*)malloc(sizeof(float) * (local_nrows+2) * (local_ncols+2));
  tmp_subgrid = (float*)malloc(sizeof(float) * (local_nrows+2) * (local_ncols+2));

  // Master
  if(rank==MASTER){
    //init full image
    image = malloc(sizeof(float) * (width * height));
    init_image(nx, ny, width, height, image);
  }

  int sendcounts[size];
  int displs[size];
  for(int i = 0; i<size; i++){
    var_nx = calc_ny_from_rank(nx, i, size);
    printf("%d", var_nx)
    sendcounts[i] = (local_ncols+2) * var_nx;
    displs[i] = i * (local_nrows+2) * local_ncols;
  }

  MPI_Scatterv(image+height, sendcounts, displs, MPI_FLOAT, subgrid + (local_nrows+2), (local_ncols)*(local_nrows+2), MPI_FLOAT, 0, MPI_COMM_WORLD);


    // Call the stencil kernel
    double tic = wtime();
    for (int t = 0; t < niters; ++t) {
      stencil(local_ncols, local_nrows, (local_ncols+2), (local_nrows+2), right, left, subgrid, tmp_subgrid);
      stencil(local_ncols, local_nrows, (local_ncols+2), (local_nrows+2), right, left, tmp_subgrid, subgrid);
    }
    double toc = wtime()-tic;
    double time;


    MPI_Gatherv(subgrid+(local_nrows+2), (local_nrows+2)*local_ncols, MPI_FLOAT, image+height, sendcounts, displs, MPI_FLOAT, 0, MPI_COMM_WORLD);
    MPI_Reduce(&toc, &time, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);

    // maxTime = toc-tic;
    // double rTime = 0;
    // for (int r = 1; r < size; r++) {
    //     MPI_Recv(&rTime, BUFSIZ, MPI_DOUBLE, r, tag, MPI_COMM_WORLD, &status);
    //     if (rTime > maxTime) maxTime = rTime;
    // }

    if (rank == MASTER){
    // Output
    printf("------------------------------------\n");
    printf(" runtime: %lf s\n", time);
    printf("------------------------------------\n");

    output_image(OUTPUT_FILE, nx, ny, width, height, image);
    free(image);
  }
  MPI_Finalize();
}

void stencil(const int nx, const int ny, const int width, const int height, const int right, const int left, float* restrict image, float* restrict tmp_image){
    MPI_Status status;
    //first send to left and recieve on the right
    MPI_Sendrecv(image+height, width, MPI_FLOAT, left, 6,
		 image+((height-1)*width), width, MPI_FLOAT, right, 6,
		 MPI_COMM_WORLD, &status);

    //then send on the right and recieve on the left
    MPI_Sendrecv(image+((width-2)*height), height, MPI_FLOAT, right, 9,
		 image, height, MPI_FLOAT, left, 9,
		 MPI_COMM_WORLD, &status);

    for (int j = 1; j < ny + 1; ++j) {
      for (int i = 1; i < nx + 1; ++i) {
        tmp_image[i+j*height]= 0.6f*image[i+j*height] + 0.1f*(image[i+(j-1)*height] + image[i+(j+1)*height] + image[(i-1)+j*height] + image[(i+1)+j*height]);
      }
    }
}


// Create the input image
void init_image(const int nx, const int ny, const int width, const int height,
                float* image)
{
  // Zero everything
  for (int j = 0; j < ny + 2; ++j) {
    for (int i = 0; i < nx + 2; ++i) {
      image[j + i * height] = 0.0f;
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

int calc_ny_from_rank(int nx, int rank, int size)
{
  int local_ncols;

  local_ncols = nx / size;       /* integer division */
  if ((ny % size) != 0) {  /* if there is a remainder */
    if (rank == size - 1)
      local_ncols += nx % size;  /* add remainder to last rank */
  }

  return local_ncols;
}

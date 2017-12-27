/**
 * Image Processing and Computer Graphics
 *
 * Exercise 1: Noise, basic operators and filters
 */

#include <cstdlib>   /// contains: EXIT_SUCCESS
#include <iostream>  /// contains: std::cout etc.
#include <math.h>    /// contains: log
#include <vector>
#include "CMatrix.h"
#include "NMath.h"

using namespace NMath;
using namespace std;

int main(int argc, char** args)
{
  /// Tell the compiler not to throw warnings for unused variables
  /// Remove these lines if you want to use command line arguments.
  (void)argc;
  (void)args;

  /// Print something so we know the program actually runs
  std::cout << "Hello, World!\n";

  /// Define image
  CMatrix<float> aImage, bImage;
  /// Read image from a PGM file
  aImage.readFromPGM("lena.pgm");

  vector<CMatrix<float> > cImage = new vector<CMatrix<float> >();


  /// Add Gaussian noise here
  float n;
  for (int i = 0; i < 50; ++i) {

    bImage = aImage; // copying !!

    for (int y = 0; y < aImage.ySize(); ++y) {
      for (int x = 0; x < aImage.xSize(); ++x) {
        // (...)
        // operator()(x, y) =  // sth
        n = NMath::randomGauss();
        bImage(x, y) = max(min(bImage(x, y) - n * 20, 255.), 0.);
      }
    }
    char buffer[50];
    sprintf(buffer, "lenaNoisy%d.pgm", i);
    /// Write noisy image to PGM file
    // bImage.writeToPGM(buffer);
    cImage.append(bImage);
  }

  // compute the PSNR
  // Formula: 10log_10(N(max_iI* - min_iI*^2 / sum_i (I* - I)^2)
  // result: 102.316 dB for the picture without noise.
  float val;
  int N = aImage.size();
  val = 10 * log(N * (aImage.max() - aImage.min()) * (aImage.max() - aImage.min())) / log(10);
  std::cout << "PSNR: " << val << " dB" << std::endl;

  return EXIT_SUCCESS;
}


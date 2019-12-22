#include <stdio.h>
#include <stdlib.h>
#include <limits.h>


unsigned int findSeed(unsigned int x) {
  int seed;
  for (seed = 0; seed < UINT_MAX; seed++) {
    srand(seed);
    unsigned r = rand();
    printf("%d %d\n", seed, r);
    if (r == x) {
      printf("found: %d\n", seed);
    }
  }
}


int main(void) {
  findSeed(118000911);
}



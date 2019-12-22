#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>

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

void printSequence(seed) {
  srand(seed);
  int i;
  for (i = 0; i < 10; i++ ) {
    printf("%d\n", rand());
  }
}
int main(int argc, char* argv[]) {
  //findSeed(118000911);
    int seed = atoi(argv[1]);
    printSequence(seed);

}

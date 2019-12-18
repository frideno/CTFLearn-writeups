#include <stdio.h>

#define n1 525024598
#define n2 -889275714
int n1xorn2 = n1 ^ n2;

int checkNum(int i) {
  return ((i << 3) ^ i) == n1xorn2;

}
int main() {
  int i;
  for (i = 0; i <= 0; i--) {
    if (checkNum(i) == 1) {
      printf("found %d\n", i);
    	return 0;
     }
  }
  printf("not found.\n");
}

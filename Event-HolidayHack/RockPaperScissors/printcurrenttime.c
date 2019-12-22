#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() {

while (1) {
printf("%u\n", time(NULL));
sleep(1);
}
}

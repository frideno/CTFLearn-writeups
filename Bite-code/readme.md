when we open bitecode.txt, we see java byte code.
after reading bytecode article on: https://www.javaworld.com/article/2077233/bytecode-basics.html
we can interpert it:

public static boolean checkNum(int);
         0: iload_0	// push(local0, which is num).
         1: iconst_3	// push(3)
         2: ishl	// push(pop() << pop()), which is push(num << 3)
         3: istore_1	// local1 = pop()

	// until here, local1 = num << 3.

         4: iload_0	// push(num)
         5: ldc  #2  // int 525024598 	// push(525024598)
         7: ixor	// push(pop()^pop()), which is push(num ^ 525024598)
         8: istore_2	// local2 = pop()
         
	// now, local2 = num ^ 525024598

	9: iload_1	// push(local1)
        10: iload_2	// push(local2)
        11: ixor	// push(pop()^pop()), which means push(local1^local2)

	// now, top of stack is tmp =  (num << 3) ^ (num ^ 525024598).

        12: ldc           #3	// push(-889275714)                  // int -889275714
        14: if_icmpne     21	// if tmp != -889275717, branch to line 21. 
        17: iconst_1		// push(1)
        18: goto          22	// jump to line 22.
        21: iconst_0		// push (0) 
        22: ireturn		
	// when tmp != 889275717, return 0
	// when tmp == 889275717, return 1.

overall, this function gets int num.
it computes: (num << 3) ^ (num ^525024598) and checks == -709523480.
so, we compute reverse:
(num << 3) ^ num = -889275714 ^ 525024598 = -709523480

say num binary is b32b31b30...b2b1b0
or brute force with c program:
(we assume num < 0 by xored < 0)

bf.c:
#include <stdio.h>

#define n1 525024598
#define n2 -889275714
int n1xorn2 = n1 ^ n2;

int checkNum(i) {
  return ((i << 3) ^ i) == n1xorn2;

}
int main(void) {
  int i;
  for (i = 0; i <= 0; i--) {
    if (checkNum(i) == 1)
      printf("found %d\n", i);
    
  }
  printf("not found.\n");
}

$./a.out
found -1352854872
and that is our flag.



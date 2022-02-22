#include <stdio.h>
#include <time.h>
#include <stdint.h>

int main() {
double time;
time = clock();
  int i;
  unsigned long long t1 = 0, t2 = 1;
  unsigned long long n = t1 + t2;
  printf("First 100 Fibonacci numbers are  : %d, %d, ", t1, t2);
  for (i = 3; i < 94; i++) {
    printf("%llu, ", n);
    t1 = t2;
    t2 = n;
    n = t1 + t2;
  }
    int t3,t4,n1;
    t3 = t1%1000; t4 = t2%1000;
    t1 = t1/1000;
    t2 = t2/1000;
    n = n/1000;
    n1 = t3+t4;
    if (n1>999){
        n++;
    }
  for (i = 94; i < 101; i++) {
    printf("%llu%.3d, ", n,n1);
    t1 = t2;
    t2 = n;
    n = t1 + t2;
    t3 = t4;
    t4 = n1;
    n1 = t3 + t4;
     if (n1>999){
        n++;
        n1 = n1 % 1000;
    }
  }
  time = clock() - time;
  time = time/CLOCKS_PER_SEC;
  printf("\n");
  printf("   Total CPU time is %f seconds.", time);
  return 0;
}

#include "types.h"
#include "user.h"

int test_priority(void);
int test2(void);

int main(int argc, char *argv[])
{
  printf(1, "\n This program tests the correctness of your lab#2\n");
  
  if (atoi(argv[1]) == 1)
	test_priority();
  else if (atoi(argv[1]) == 2)
	test2();
  else 
   printf(1, "\ntype \"lab2 1\" to test priority and change, \"lab2 2\" to test turn around time and aging priority\n");
  
    // End of test
	exit(0);
	return 0;
 }
  
int test_priority(void) {
  printf(1, "\n  Part 1) testing priority and changing priority:\n");
  printf(1, "\n  We are going to show priority\n");
  prntinfo();
  printf(1, "\n  We are going to change this process to 5\n");
  chpri(getpid(), 5);
  prntinfo();
  return 0;
}

int test2(void){
    printf(1, "\n  We are going to show runtime and aging priority\n");
    int status;
    int count = 2;
    int pid = fork();
    if(pid == 0){
        for(int i = 0; i < 100000; ++i)
        {
            count = count * 5.314567 + 102;
        }
    }
    else{
        waitpid(pid, &status, 0);
        printf(1, "\n  We are going to show parent info\n");
        prntinfo();
    }
    prntinfo();
    return 0;
}
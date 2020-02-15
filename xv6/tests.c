#include "types.h"
#include "user.h"

int main(int argc, char *argv[]){

    printf(1, "\nThis program is for testing our implementation of waitpid\n");
    printf(1, "\nIt is extended to test default priority values, and changing them with system calls\n");
    int count = 0;
    int x = 0;
    int status;
    //chpri(getpid(),25);
    int pid = fork();
    if(pid == 0){ //child
        count = -10;
        //prntinfo();
        //prntinfo();
        for(int i = 0; i < 15000; i++){
            x = x * 4.69 + 420;
        }
        prntinfo();
        printf(1, "\nChild prints %d\n",count);
    }
    if(pid > 0){
        waitpid(pid, &status, 0);
        //prntinfo();
        printf(1, "\nParent prints %d\n", count);
        prntinfo();
    }
    printf(1, "\n Child should be printing before parent since parent waits for child\n");

    exit(0);
    return 0;

}
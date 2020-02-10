#include "types.h"
#include "user.h"

int main(int argc, char *argv[]){

    printf(1, "\nThis program is for testing our implementation of waitpid\n");
    int count = 0;
    int status;
    int pid = fork();
    if(pid == 0){ //child
        count = -10;
        printf(1, "\nChild prints %d\n",count);
    }
    if(pid > 0){
        waitpid(pid, &status, 0);
        printf(1, "\nParent prints %d\n", count);
    }
    printf(1, "\n Child should be printing before parent since parent waits for child\n");

    exit(0);
    return 0;

}
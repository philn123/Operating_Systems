
_lab1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
int exitWait(void);
int waitPid(void);
int CELEBW02(void);

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx
  printf(1, "\n This program tests the correctness of your lab#1\n");
  12:	83 ec 08             	sub    $0x8,%esp
  15:	68 b8 0c 00 00       	push   $0xcb8
  1a:	6a 01                	push   $0x1
  1c:	e8 5f 07 00 00       	call   780 <printf>
  
  if (atoi(argv[1]) == 1)
  21:	5a                   	pop    %edx
  22:	ff 73 04             	pushl  0x4(%ebx)
  25:	e8 86 05 00 00       	call   5b0 <atoi>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	83 f8 01             	cmp    $0x1,%eax
  30:	74 41                	je     73 <main+0x73>
	exitWait();
  else if (atoi(argv[1]) == 2)
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	ff 73 04             	pushl  0x4(%ebx)
  38:	e8 73 05 00 00       	call   5b0 <atoi>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	83 f8 02             	cmp    $0x2,%eax
  43:	74 35                	je     7a <main+0x7a>
	waitPid();
  else if (atoi(argv[1]) == 3)
  45:	83 ec 0c             	sub    $0xc,%esp
  48:	ff 73 04             	pushl  0x4(%ebx)
  4b:	e8 60 05 00 00       	call   5b0 <atoi>
  50:	83 c4 10             	add    $0x10,%esp
  53:	83 f8 03             	cmp    $0x3,%eax
  56:	74 29                	je     81 <main+0x81>
	CELEBW02();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the extra credit WNOHANG option \n");
  58:	50                   	push   %eax
  59:	50                   	push   %eax
  5a:	68 ec 0c 00 00       	push   $0xcec
  5f:	6a 01                	push   $0x1
  61:	e8 1a 07 00 00       	call   780 <printf>
  66:	83 c4 10             	add    $0x10,%esp
  
    // End of test
	 exit(0);
  69:	83 ec 0c             	sub    $0xc,%esp
  6c:	6a 00                	push   $0x0
  6e:	e8 af 05 00 00       	call   622 <exit>
int main(int argc, char *argv[])
{
  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1)
	exitWait();
  73:	e8 18 00 00 00       	call   90 <exitWait>
  78:	eb ef                	jmp    69 <main+0x69>
  else if (atoi(argv[1]) == 2)
	waitPid();
  7a:	e8 d1 00 00 00       	call   150 <waitPid>
  7f:	eb e8                	jmp    69 <main+0x69>
  else if (atoi(argv[1]) == 3)
	CELEBW02();
  81:	e8 7a 02 00 00       	call   300 <CELEBW02>
  86:	eb e1                	jmp    69 <main+0x69>
  88:	66 90                	xchg   %ax,%ax
  8a:	66 90                	xchg   %ax,%ax
  8c:	66 90                	xchg   %ax,%ax
  8e:	66 90                	xchg   %ax,%ax

00000090 <exitWait>:
    // End of test
	 exit(0);
	 return 0;
 }
  
int exitWait(void) {
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	56                   	push   %esi
  94:	53                   	push   %ebx
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent executes this code
      ret_pid = wait(&exit_status);
  95:	8d 75 f4             	lea    -0xc(%ebp),%esi
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  98:	31 db                	xor    %ebx,%ebx
    // End of test
	 exit(0);
	 return 0;
 }
  
int exitWait(void) {
  9a:	83 ec 18             	sub    $0x18,%esp
	  int pid, ret_pid, exit_status;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  9d:	68 a0 0a 00 00       	push   $0xaa0
  a2:	6a 01                	push   $0x1
  a4:	e8 d7 06 00 00       	call   780 <printf>
  a9:	83 c4 10             	add    $0x10,%esp

  for (i = 0; i < 2; i++) {
    pid = fork();
  ac:	e8 69 05 00 00       	call   61a <fork>
    if (pid == 0) { // only the child executed this code
  b1:	83 f8 00             	cmp    $0x0,%eax
  b4:	74 32                	je     e8 <exitWait+0x58>
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent executes this code
  b6:	7e 78                	jle    130 <exitWait+0xa0>
      ret_pid = wait(&exit_status);
  b8:	83 ec 0c             	sub    $0xc,%esp
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  bb:	83 c3 01             	add    $0x1,%ebx
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent executes this code
      ret_pid = wait(&exit_status);
  be:	56                   	push   %esi
  bf:	e8 66 05 00 00       	call   62a <wait>
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
  c4:	ff 75 f4             	pushl  -0xc(%ebp)
  c7:	50                   	push   %eax
  c8:	68 20 0b 00 00       	push   $0xb20
  cd:	6a 01                	push   $0x1
  cf:	e8 ac 06 00 00       	call   780 <printf>
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  d4:	83 c4 20             	add    $0x20,%esp
  d7:	83 fb 02             	cmp    $0x2,%ebx
  da:	75 d0                	jne    ac <exitWait+0x1c>
	  printf(2, "\nError using fork\n");
      exit(-1);
    }
  }
  return 0;
}
  dc:	8d 65 f8             	lea    -0x8(%ebp),%esp
  df:	31 c0                	xor    %eax,%eax
  e1:	5b                   	pop    %ebx
  e2:	5e                   	pop    %esi
  e3:	5d                   	pop    %ebp
  e4:	c3                   	ret    
  e5:	8d 76 00             	lea    0x0(%esi),%esi
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
    pid = fork();
    if (pid == 0) { // only the child executed this code
      if (i == 0)
  e8:	85 db                	test   %ebx,%ebx
  ea:	75 24                	jne    110 <exitWait+0x80>
      {
      printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
  ec:	e8 b1 05 00 00       	call   6a2 <getpid>
  f1:	6a 00                	push   $0x0
  f3:	50                   	push   %eax
  f4:	68 e4 0a 00 00       	push   $0xae4
  f9:	6a 01                	push   $0x1
  fb:	e8 80 06 00 00       	call   780 <printf>
      exit(0);
 100:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 107:	e8 16 05 00 00       	call   622 <exit>
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
 110:	e8 8d 05 00 00       	call   6a2 <getpid>
 115:	6a ff                	push   $0xffffffff
 117:	50                   	push   %eax
 118:	68 e4 0a 00 00       	push   $0xae4
 11d:	6a 01                	push   $0x1
 11f:	e8 5c 06 00 00       	call   780 <printf>
      exit(-1);
 124:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 12b:	e8 f2 04 00 00       	call   622 <exit>
    } else if (pid > 0) { // only the parent executes this code
      ret_pid = wait(&exit_status);
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
    } else  // something went wrong with fork system call
    {  
	  printf(2, "\nError using fork\n");
 130:	83 ec 08             	sub    $0x8,%esp
 133:	68 64 0d 00 00       	push   $0xd64
 138:	6a 02                	push   $0x2
 13a:	e8 41 06 00 00       	call   780 <printf>
      exit(-1);
 13f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 146:	e8 d7 04 00 00       	call   622 <exit>
 14b:	90                   	nop
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000150 <waitPid>:
    }
  }
  return 0;
}

int waitPid(void){
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	56                   	push   %esi
 154:	53                   	push   %ebx
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

	for (i = 0; i <5; i++) {
 155:	31 db                	xor    %ebx,%ebx
    }
  }
  return 0;
}

int waitPid(void){
 157:	83 ec 28             	sub    $0x28,%esp
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 15a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 161:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 168:	68 64 0b 00 00       	push   $0xb64
 16d:	6a 01                	push   $0x1

int waitPid(void){
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 16f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 176:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 17d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 184:	e8 f7 05 00 00       	call   780 <printf>
 189:	83 c4 10             	add    $0x10,%esp

	for (i = 0; i <5; i++) {
		pid_a[i] = fork();
 18c:	e8 89 04 00 00       	call   61a <fork>
		if (pid_a[i] == 0) { // only the child executed this code
 191:	85 c0                	test   %eax,%eax
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

	for (i = 0; i <5; i++) {
		pid_a[i] = fork();
 193:	89 44 9d e4          	mov    %eax,-0x1c(%ebp,%ebx,4)
		if (pid_a[i] == 0) { // only the child executed this code
 197:	0f 84 31 01 00 00    	je     2ce <waitPid+0x17e>
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

	for (i = 0; i <5; i++) {
 19d:	83 c3 01             	add    $0x1,%ebx
 1a0:	83 fb 05             	cmp    $0x5,%ebx
 1a3:	75 e7                	jne    18c <waitPid+0x3c>
			printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
			exit(getpid() + 4);
		}
	}
       
      sleep(5);
 1a5:	83 ec 0c             	sub    $0xc,%esp
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1a8:	8d 5d e0             	lea    -0x20(%ebp),%ebx
			printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
			exit(getpid() + 4);
		}
	}
       
      sleep(5);
 1ab:	6a 05                	push   $0x5
 1ad:	e8 00 05 00 00       	call   6b2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 1b2:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1b5:	83 c4 0c             	add    $0xc,%esp
 1b8:	56                   	push   %esi
 1b9:	68 e0 0b 00 00       	push   $0xbe0
 1be:	6a 01                	push   $0x1
 1c0:	e8 bb 05 00 00       	call   780 <printf>
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1c5:	83 c4 0c             	add    $0xc,%esp
 1c8:	6a 00                	push   $0x0
 1ca:	53                   	push   %ebx
 1cb:	56                   	push   %esi
 1cc:	e8 f1 04 00 00       	call   6c2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 1d1:	ff 75 e0             	pushl  -0x20(%ebp)
 1d4:	50                   	push   %eax
 1d5:	68 1c 0c 00 00       	push   $0xc1c
 1da:	6a 01                	push   $0x1
 1dc:	e8 9f 05 00 00       	call   780 <printf>
      sleep(5);
 1e1:	83 c4 14             	add    $0x14,%esp
 1e4:	6a 05                	push   $0x5
 1e6:	e8 c7 04 00 00       	call   6b2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 1eb:	8b 75 e8             	mov    -0x18(%ebp),%esi
 1ee:	83 c4 0c             	add    $0xc,%esp
 1f1:	56                   	push   %esi
 1f2:	68 e0 0b 00 00       	push   $0xbe0
 1f7:	6a 01                	push   $0x1
 1f9:	e8 82 05 00 00       	call   780 <printf>
      ret_pid = waitpid(pid_a[1], &exit_status, 0);
 1fe:	83 c4 0c             	add    $0xc,%esp
 201:	6a 00                	push   $0x0
 203:	53                   	push   %ebx
 204:	56                   	push   %esi
 205:	e8 b8 04 00 00       	call   6c2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 20a:	ff 75 e0             	pushl  -0x20(%ebp)
 20d:	50                   	push   %eax
 20e:	68 1c 0c 00 00       	push   $0xc1c
 213:	6a 01                	push   $0x1
 215:	e8 66 05 00 00       	call   780 <printf>
      sleep(5);
 21a:	83 c4 14             	add    $0x14,%esp
 21d:	6a 05                	push   $0x5
 21f:	e8 8e 04 00 00       	call   6b2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 224:	8b 75 ec             	mov    -0x14(%ebp),%esi
 227:	83 c4 0c             	add    $0xc,%esp
 22a:	56                   	push   %esi
 22b:	68 e0 0b 00 00       	push   $0xbe0
 230:	6a 01                	push   $0x1
 232:	e8 49 05 00 00       	call   780 <printf>
      ret_pid = waitpid(pid_a[2], &exit_status, 0);
 237:	83 c4 0c             	add    $0xc,%esp
 23a:	6a 00                	push   $0x0
 23c:	53                   	push   %ebx
 23d:	56                   	push   %esi
 23e:	e8 7f 04 00 00       	call   6c2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 243:	ff 75 e0             	pushl  -0x20(%ebp)
 246:	50                   	push   %eax
 247:	68 1c 0c 00 00       	push   $0xc1c
 24c:	6a 01                	push   $0x1
 24e:	e8 2d 05 00 00       	call   780 <printf>
      sleep(5);
 253:	83 c4 14             	add    $0x14,%esp
 256:	6a 05                	push   $0x5
 258:	e8 55 04 00 00       	call   6b2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 25d:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 260:	83 c4 0c             	add    $0xc,%esp
 263:	56                   	push   %esi
 264:	68 e0 0b 00 00       	push   $0xbe0
 269:	6a 01                	push   $0x1
 26b:	e8 10 05 00 00       	call   780 <printf>
      ret_pid = waitpid(pid_a[0], &exit_status, 0);
 270:	83 c4 0c             	add    $0xc,%esp
 273:	6a 00                	push   $0x0
 275:	53                   	push   %ebx
 276:	56                   	push   %esi
 277:	e8 46 04 00 00       	call   6c2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 27c:	ff 75 e0             	pushl  -0x20(%ebp)
 27f:	50                   	push   %eax
 280:	68 1c 0c 00 00       	push   $0xc1c
 285:	6a 01                	push   $0x1
 287:	e8 f4 04 00 00       	call   780 <printf>
      sleep(5);
 28c:	83 c4 14             	add    $0x14,%esp
 28f:	6a 05                	push   $0x5
 291:	e8 1c 04 00 00       	call   6b2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 296:	8b 75 f4             	mov    -0xc(%ebp),%esi
 299:	83 c4 0c             	add    $0xc,%esp
 29c:	56                   	push   %esi
 29d:	68 e0 0b 00 00       	push   $0xbe0
 2a2:	6a 01                	push   $0x1
 2a4:	e8 d7 04 00 00       	call   780 <printf>
      ret_pid = waitpid(pid_a[4], &exit_status, 0);
 2a9:	83 c4 0c             	add    $0xc,%esp
 2ac:	6a 00                	push   $0x0
 2ae:	53                   	push   %ebx
 2af:	56                   	push   %esi
 2b0:	e8 0d 04 00 00       	call   6c2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2b5:	ff 75 e0             	pushl  -0x20(%ebp)
 2b8:	50                   	push   %eax
 2b9:	68 1c 0c 00 00       	push   $0xc1c
 2be:	6a 01                	push   $0x1
 2c0:	e8 bb 04 00 00       	call   780 <printf>
      
      return 0;
  }
 2c5:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2c8:	31 c0                	xor    %eax,%eax
 2ca:	5b                   	pop    %ebx
 2cb:	5e                   	pop    %esi
 2cc:	5d                   	pop    %ebp
 2cd:	c3                   	ret    
 printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

	for (i = 0; i <5; i++) {
		pid_a[i] = fork();
		if (pid_a[i] == 0) { // only the child executed this code
			printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
 2ce:	e8 cf 03 00 00       	call   6a2 <getpid>
 2d3:	89 c3                	mov    %eax,%ebx
 2d5:	83 c3 04             	add    $0x4,%ebx
 2d8:	e8 c5 03 00 00       	call   6a2 <getpid>
 2dd:	53                   	push   %ebx
 2de:	50                   	push   %eax
 2df:	68 a4 0b 00 00       	push   $0xba4
 2e4:	6a 01                	push   $0x1
 2e6:	e8 95 04 00 00       	call   780 <printf>
			exit(getpid() + 4);
 2eb:	e8 b2 03 00 00       	call   6a2 <getpid>
 2f0:	83 c0 04             	add    $0x4,%eax
 2f3:	89 04 24             	mov    %eax,(%esp)
 2f6:	e8 27 03 00 00       	call   622 <exit>
 2fb:	90                   	nop
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000300 <CELEBW02>:
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
      
      return 0;
  }

int CELEBW02(void){
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	56                   	push   %esi
 304:	53                   	push   %ebx
 305:	83 ec 18             	sub    $0x18,%esp
	
 printf(1, "\n  Part e) the waitpid option WNOHANG, test program CELEBW02 \n");
 308:	68 58 0c 00 00       	push   $0xc58
 30d:	6a 01                	push   $0x1
 30f:	e8 6c 04 00 00       	call   780 <printf>

  int pid, retpid;
  int status;

  if ((pid = fork()) < 0)
 314:	e8 01 03 00 00       	call   61a <fork>
 319:	83 c4 10             	add    $0x10,%esp
 31c:	85 c0                	test   %eax,%eax
 31e:	0f 88 87 00 00 00    	js     3ab <CELEBW02+0xab>
    printf(2, "fork() error");
  else if (pid == 0) {
 324:	0f 84 95 00 00 00    	je     3bf <CELEBW02+0xbf>
 32a:	8d 75 f4             	lea    -0xc(%ebp),%esi
 32d:	89 c3                	mov    %eax,%ebx
 32f:	90                   	nop
    sleep(5);
    exit(1);
  }
  else do {
    if ((retpid = waitpid(pid, &status, WNOHANG)) == -1)
 330:	83 ec 04             	sub    $0x4,%esp
 333:	6a 01                	push   $0x1
 335:	56                   	push   %esi
 336:	53                   	push   %ebx
 337:	e8 86 03 00 00       	call   6c2 <waitpid>
 33c:	83 c4 10             	add    $0x10,%esp
 33f:	83 f8 ff             	cmp    $0xffffffff,%eax
 342:	74 4c                	je     390 <CELEBW02+0x90>
      printf(2, "wait() error");
    else if (retpid == 0) {
 344:	85 c0                	test   %eax,%eax
 346:	75 28                	jne    370 <CELEBW02+0x70>
      printf(1, "child is still running \n");
 348:	83 ec 08             	sub    $0x8,%esp
 34b:	68 91 0d 00 00       	push   $0xd91
 350:	6a 01                	push   $0x1
 352:	e8 29 04 00 00       	call   780 <printf>
      sleep(1);
 357:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 35e:	e8 4f 03 00 00       	call   6b2 <sleep>
 363:	83 c4 10             	add    $0x10,%esp
 366:	eb c8                	jmp    330 <CELEBW02+0x30>
 368:	90                   	nop
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
    else {
        printf(1, "child exited with status of %d\n", status);
 370:	83 ec 04             	sub    $0x4,%esp
 373:	ff 75 f4             	pushl  -0xc(%ebp)
 376:	68 98 0c 00 00       	push   $0xc98
 37b:	6a 01                	push   $0x1
 37d:	e8 fe 03 00 00       	call   780 <printf>
 382:	83 c4 10             	add    $0x10,%esp
    }
  } while (retpid == 0);
  
  return 0;
  
 385:	8d 65 f8             	lea    -0x8(%ebp),%esp
 388:	31 c0                	xor    %eax,%eax
 38a:	5b                   	pop    %ebx
 38b:	5e                   	pop    %esi
 38c:	5d                   	pop    %ebp
 38d:	c3                   	ret    
 38e:	66 90                	xchg   %ax,%ax
    sleep(5);
    exit(1);
  }
  else do {
    if ((retpid = waitpid(pid, &status, WNOHANG)) == -1)
      printf(2, "wait() error");
 390:	83 ec 08             	sub    $0x8,%esp
 393:	68 84 0d 00 00       	push   $0xd84
 398:	6a 02                	push   $0x2
 39a:	e8 e1 03 00 00       	call   780 <printf>
 39f:	83 c4 10             	add    $0x10,%esp
    }
  } while (retpid == 0);
  
  return 0;
  
 3a2:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3a5:	31 c0                	xor    %eax,%eax
 3a7:	5b                   	pop    %ebx
 3a8:	5e                   	pop    %esi
 3a9:	5d                   	pop    %ebp
 3aa:	c3                   	ret    

  int pid, retpid;
  int status;

  if ((pid = fork()) < 0)
    printf(2, "fork() error");
 3ab:	83 ec 08             	sub    $0x8,%esp
 3ae:	68 77 0d 00 00       	push   $0xd77
 3b3:	6a 02                	push   $0x2
 3b5:	e8 c6 03 00 00       	call   780 <printf>
 3ba:	83 c4 10             	add    $0x10,%esp
 3bd:	eb c6                	jmp    385 <CELEBW02+0x85>
  else if (pid == 0) {
    sleep(5);
 3bf:	83 ec 0c             	sub    $0xc,%esp
 3c2:	6a 05                	push   $0x5
 3c4:	e8 e9 02 00 00       	call   6b2 <sleep>
    exit(1);
 3c9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3d0:	e8 4d 02 00 00       	call   622 <exit>
 3d5:	66 90                	xchg   %ax,%ax
 3d7:	66 90                	xchg   %ax,%ax
 3d9:	66 90                	xchg   %ax,%ax
 3db:	66 90                	xchg   %ax,%ax
 3dd:	66 90                	xchg   %ax,%ax
 3df:	90                   	nop

000003e0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	53                   	push   %ebx
 3e4:	8b 45 08             	mov    0x8(%ebp),%eax
 3e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3ea:	89 c2                	mov    %eax,%edx
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f0:	83 c1 01             	add    $0x1,%ecx
 3f3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 3f7:	83 c2 01             	add    $0x1,%edx
 3fa:	84 db                	test   %bl,%bl
 3fc:	88 5a ff             	mov    %bl,-0x1(%edx)
 3ff:	75 ef                	jne    3f0 <strcpy+0x10>
    ;
  return os;
}
 401:	5b                   	pop    %ebx
 402:	5d                   	pop    %ebp
 403:	c3                   	ret    
 404:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 40a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000410 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	56                   	push   %esi
 414:	53                   	push   %ebx
 415:	8b 55 08             	mov    0x8(%ebp),%edx
 418:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 41b:	0f b6 02             	movzbl (%edx),%eax
 41e:	0f b6 19             	movzbl (%ecx),%ebx
 421:	84 c0                	test   %al,%al
 423:	75 1e                	jne    443 <strcmp+0x33>
 425:	eb 29                	jmp    450 <strcmp+0x40>
 427:	89 f6                	mov    %esi,%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 430:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 433:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 436:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 439:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 43d:	84 c0                	test   %al,%al
 43f:	74 0f                	je     450 <strcmp+0x40>
 441:	89 f1                	mov    %esi,%ecx
 443:	38 d8                	cmp    %bl,%al
 445:	74 e9                	je     430 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 447:	29 d8                	sub    %ebx,%eax
}
 449:	5b                   	pop    %ebx
 44a:	5e                   	pop    %esi
 44b:	5d                   	pop    %ebp
 44c:	c3                   	ret    
 44d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 450:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 452:	29 d8                	sub    %ebx,%eax
}
 454:	5b                   	pop    %ebx
 455:	5e                   	pop    %esi
 456:	5d                   	pop    %ebp
 457:	c3                   	ret    
 458:	90                   	nop
 459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000460 <strlen>:

uint
strlen(const char *s)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 466:	80 39 00             	cmpb   $0x0,(%ecx)
 469:	74 12                	je     47d <strlen+0x1d>
 46b:	31 d2                	xor    %edx,%edx
 46d:	8d 76 00             	lea    0x0(%esi),%esi
 470:	83 c2 01             	add    $0x1,%edx
 473:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 477:	89 d0                	mov    %edx,%eax
 479:	75 f5                	jne    470 <strlen+0x10>
    ;
  return n;
}
 47b:	5d                   	pop    %ebp
 47c:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 47d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	eb 0d                	jmp    490 <memset>
 483:	90                   	nop
 484:	90                   	nop
 485:	90                   	nop
 486:	90                   	nop
 487:	90                   	nop
 488:	90                   	nop
 489:	90                   	nop
 48a:	90                   	nop
 48b:	90                   	nop
 48c:	90                   	nop
 48d:	90                   	nop
 48e:	90                   	nop
 48f:	90                   	nop

00000490 <memset>:

void*
memset(void *dst, int c, uint n)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 497:	8b 4d 10             	mov    0x10(%ebp),%ecx
 49a:	8b 45 0c             	mov    0xc(%ebp),%eax
 49d:	89 d7                	mov    %edx,%edi
 49f:	fc                   	cld    
 4a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4a2:	89 d0                	mov    %edx,%eax
 4a4:	5f                   	pop    %edi
 4a5:	5d                   	pop    %ebp
 4a6:	c3                   	ret    
 4a7:	89 f6                	mov    %esi,%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <strchr>:

char*
strchr(const char *s, char c)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	53                   	push   %ebx
 4b4:	8b 45 08             	mov    0x8(%ebp),%eax
 4b7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 4ba:	0f b6 10             	movzbl (%eax),%edx
 4bd:	84 d2                	test   %dl,%dl
 4bf:	74 1d                	je     4de <strchr+0x2e>
    if(*s == c)
 4c1:	38 d3                	cmp    %dl,%bl
 4c3:	89 d9                	mov    %ebx,%ecx
 4c5:	75 0d                	jne    4d4 <strchr+0x24>
 4c7:	eb 17                	jmp    4e0 <strchr+0x30>
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4d0:	38 ca                	cmp    %cl,%dl
 4d2:	74 0c                	je     4e0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 4d4:	83 c0 01             	add    $0x1,%eax
 4d7:	0f b6 10             	movzbl (%eax),%edx
 4da:	84 d2                	test   %dl,%dl
 4dc:	75 f2                	jne    4d0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 4de:	31 c0                	xor    %eax,%eax
}
 4e0:	5b                   	pop    %ebx
 4e1:	5d                   	pop    %ebp
 4e2:	c3                   	ret    
 4e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004f0 <gets>:

char*
gets(char *buf, int max)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
 4f4:	56                   	push   %esi
 4f5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4f6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 4f8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 4fb:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4fe:	eb 29                	jmp    529 <gets+0x39>
    cc = read(0, &c, 1);
 500:	83 ec 04             	sub    $0x4,%esp
 503:	6a 01                	push   $0x1
 505:	57                   	push   %edi
 506:	6a 00                	push   $0x0
 508:	e8 2d 01 00 00       	call   63a <read>
    if(cc < 1)
 50d:	83 c4 10             	add    $0x10,%esp
 510:	85 c0                	test   %eax,%eax
 512:	7e 1d                	jle    531 <gets+0x41>
      break;
    buf[i++] = c;
 514:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 518:	8b 55 08             	mov    0x8(%ebp),%edx
 51b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 51d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 51f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 523:	74 1b                	je     540 <gets+0x50>
 525:	3c 0d                	cmp    $0xd,%al
 527:	74 17                	je     540 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 529:	8d 5e 01             	lea    0x1(%esi),%ebx
 52c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 52f:	7c cf                	jl     500 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 531:	8b 45 08             	mov    0x8(%ebp),%eax
 534:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 538:	8d 65 f4             	lea    -0xc(%ebp),%esp
 53b:	5b                   	pop    %ebx
 53c:	5e                   	pop    %esi
 53d:	5f                   	pop    %edi
 53e:	5d                   	pop    %ebp
 53f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 540:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 543:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 545:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 549:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54c:	5b                   	pop    %ebx
 54d:	5e                   	pop    %esi
 54e:	5f                   	pop    %edi
 54f:	5d                   	pop    %ebp
 550:	c3                   	ret    
 551:	eb 0d                	jmp    560 <stat>
 553:	90                   	nop
 554:	90                   	nop
 555:	90                   	nop
 556:	90                   	nop
 557:	90                   	nop
 558:	90                   	nop
 559:	90                   	nop
 55a:	90                   	nop
 55b:	90                   	nop
 55c:	90                   	nop
 55d:	90                   	nop
 55e:	90                   	nop
 55f:	90                   	nop

00000560 <stat>:

int
stat(const char *n, struct stat *st)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	56                   	push   %esi
 564:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 565:	83 ec 08             	sub    $0x8,%esp
 568:	6a 00                	push   $0x0
 56a:	ff 75 08             	pushl  0x8(%ebp)
 56d:	e8 f0 00 00 00       	call   662 <open>
  if(fd < 0)
 572:	83 c4 10             	add    $0x10,%esp
 575:	85 c0                	test   %eax,%eax
 577:	78 27                	js     5a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 579:	83 ec 08             	sub    $0x8,%esp
 57c:	ff 75 0c             	pushl  0xc(%ebp)
 57f:	89 c3                	mov    %eax,%ebx
 581:	50                   	push   %eax
 582:	e8 f3 00 00 00       	call   67a <fstat>
 587:	89 c6                	mov    %eax,%esi
  close(fd);
 589:	89 1c 24             	mov    %ebx,(%esp)
 58c:	e8 b9 00 00 00       	call   64a <close>
  return r;
 591:	83 c4 10             	add    $0x10,%esp
 594:	89 f0                	mov    %esi,%eax
}
 596:	8d 65 f8             	lea    -0x8(%ebp),%esp
 599:	5b                   	pop    %ebx
 59a:	5e                   	pop    %esi
 59b:	5d                   	pop    %ebp
 59c:	c3                   	ret    
 59d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 5a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 5a5:	eb ef                	jmp    596 <stat+0x36>
 5a7:	89 f6                	mov    %esi,%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	53                   	push   %ebx
 5b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5b7:	0f be 11             	movsbl (%ecx),%edx
 5ba:	8d 42 d0             	lea    -0x30(%edx),%eax
 5bd:	3c 09                	cmp    $0x9,%al
 5bf:	b8 00 00 00 00       	mov    $0x0,%eax
 5c4:	77 1f                	ja     5e5 <atoi+0x35>
 5c6:	8d 76 00             	lea    0x0(%esi),%esi
 5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 5d0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 5d3:	83 c1 01             	add    $0x1,%ecx
 5d6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5da:	0f be 11             	movsbl (%ecx),%edx
 5dd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 5e0:	80 fb 09             	cmp    $0x9,%bl
 5e3:	76 eb                	jbe    5d0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 5e5:	5b                   	pop    %ebx
 5e6:	5d                   	pop    %ebp
 5e7:	c3                   	ret    
 5e8:	90                   	nop
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	56                   	push   %esi
 5f4:	53                   	push   %ebx
 5f5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 5f8:	8b 45 08             	mov    0x8(%ebp),%eax
 5fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5fe:	85 db                	test   %ebx,%ebx
 600:	7e 14                	jle    616 <memmove+0x26>
 602:	31 d2                	xor    %edx,%edx
 604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 608:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 60c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 60f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 612:	39 da                	cmp    %ebx,%edx
 614:	75 f2                	jne    608 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 616:	5b                   	pop    %ebx
 617:	5e                   	pop    %esi
 618:	5d                   	pop    %ebp
 619:	c3                   	ret    

0000061a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 61a:	b8 01 00 00 00       	mov    $0x1,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <exit>:
SYSCALL(exit)
 622:	b8 02 00 00 00       	mov    $0x2,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <wait>:
SYSCALL(wait)
 62a:	b8 03 00 00 00       	mov    $0x3,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <pipe>:
SYSCALL(pipe)
 632:	b8 04 00 00 00       	mov    $0x4,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <read>:
SYSCALL(read)
 63a:	b8 05 00 00 00       	mov    $0x5,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <write>:
SYSCALL(write)
 642:	b8 10 00 00 00       	mov    $0x10,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <close>:
SYSCALL(close)
 64a:	b8 15 00 00 00       	mov    $0x15,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <kill>:
SYSCALL(kill)
 652:	b8 06 00 00 00       	mov    $0x6,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <exec>:
SYSCALL(exec)
 65a:	b8 07 00 00 00       	mov    $0x7,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <open>:
SYSCALL(open)
 662:	b8 0f 00 00 00       	mov    $0xf,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <mknod>:
SYSCALL(mknod)
 66a:	b8 11 00 00 00       	mov    $0x11,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    

00000672 <unlink>:
SYSCALL(unlink)
 672:	b8 12 00 00 00       	mov    $0x12,%eax
 677:	cd 40                	int    $0x40
 679:	c3                   	ret    

0000067a <fstat>:
SYSCALL(fstat)
 67a:	b8 08 00 00 00       	mov    $0x8,%eax
 67f:	cd 40                	int    $0x40
 681:	c3                   	ret    

00000682 <link>:
SYSCALL(link)
 682:	b8 13 00 00 00       	mov    $0x13,%eax
 687:	cd 40                	int    $0x40
 689:	c3                   	ret    

0000068a <mkdir>:
SYSCALL(mkdir)
 68a:	b8 14 00 00 00       	mov    $0x14,%eax
 68f:	cd 40                	int    $0x40
 691:	c3                   	ret    

00000692 <chdir>:
SYSCALL(chdir)
 692:	b8 09 00 00 00       	mov    $0x9,%eax
 697:	cd 40                	int    $0x40
 699:	c3                   	ret    

0000069a <dup>:
SYSCALL(dup)
 69a:	b8 0a 00 00 00       	mov    $0xa,%eax
 69f:	cd 40                	int    $0x40
 6a1:	c3                   	ret    

000006a2 <getpid>:
SYSCALL(getpid)
 6a2:	b8 0b 00 00 00       	mov    $0xb,%eax
 6a7:	cd 40                	int    $0x40
 6a9:	c3                   	ret    

000006aa <sbrk>:
SYSCALL(sbrk)
 6aa:	b8 0c 00 00 00       	mov    $0xc,%eax
 6af:	cd 40                	int    $0x40
 6b1:	c3                   	ret    

000006b2 <sleep>:
SYSCALL(sleep)
 6b2:	b8 0d 00 00 00       	mov    $0xd,%eax
 6b7:	cd 40                	int    $0x40
 6b9:	c3                   	ret    

000006ba <uptime>:
SYSCALL(uptime)
 6ba:	b8 0e 00 00 00       	mov    $0xe,%eax
 6bf:	cd 40                	int    $0x40
 6c1:	c3                   	ret    

000006c2 <waitpid>:
SYSCALL(waitpid)
 6c2:	b8 16 00 00 00       	mov    $0x16,%eax
 6c7:	cd 40                	int    $0x40
 6c9:	c3                   	ret    

000006ca <prntinfo>:
SYSCALL(prntinfo)
 6ca:	b8 17 00 00 00       	mov    $0x17,%eax
 6cf:	cd 40                	int    $0x40
 6d1:	c3                   	ret    

000006d2 <chpri>:
SYSCALL(chpri)
 6d2:	b8 18 00 00 00       	mov    $0x18,%eax
 6d7:	cd 40                	int    $0x40
 6d9:	c3                   	ret    
 6da:	66 90                	xchg   %ax,%ax
 6dc:	66 90                	xchg   %ax,%ax
 6de:	66 90                	xchg   %ax,%ax

000006e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
 6e6:	89 c6                	mov    %eax,%esi
 6e8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 6eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6ee:	85 db                	test   %ebx,%ebx
 6f0:	74 7e                	je     770 <printint+0x90>
 6f2:	89 d0                	mov    %edx,%eax
 6f4:	c1 e8 1f             	shr    $0x1f,%eax
 6f7:	84 c0                	test   %al,%al
 6f9:	74 75                	je     770 <printint+0x90>
    neg = 1;
    x = -xx;
 6fb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 6fd:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 704:	f7 d8                	neg    %eax
 706:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 709:	31 ff                	xor    %edi,%edi
 70b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 70e:	89 ce                	mov    %ecx,%esi
 710:	eb 08                	jmp    71a <printint+0x3a>
 712:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 718:	89 cf                	mov    %ecx,%edi
 71a:	31 d2                	xor    %edx,%edx
 71c:	8d 4f 01             	lea    0x1(%edi),%ecx
 71f:	f7 f6                	div    %esi
 721:	0f b6 92 b4 0d 00 00 	movzbl 0xdb4(%edx),%edx
  }while((x /= base) != 0);
 728:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 72a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 72d:	75 e9                	jne    718 <printint+0x38>
  if(neg)
 72f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 732:	8b 75 c0             	mov    -0x40(%ebp),%esi
 735:	85 c0                	test   %eax,%eax
 737:	74 08                	je     741 <printint+0x61>
    buf[i++] = '-';
 739:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 73e:	8d 4f 02             	lea    0x2(%edi),%ecx
 741:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 745:	8d 76 00             	lea    0x0(%esi),%esi
 748:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 74b:	83 ec 04             	sub    $0x4,%esp
 74e:	83 ef 01             	sub    $0x1,%edi
 751:	6a 01                	push   $0x1
 753:	53                   	push   %ebx
 754:	56                   	push   %esi
 755:	88 45 d7             	mov    %al,-0x29(%ebp)
 758:	e8 e5 fe ff ff       	call   642 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 75d:	83 c4 10             	add    $0x10,%esp
 760:	39 df                	cmp    %ebx,%edi
 762:	75 e4                	jne    748 <printint+0x68>
    putc(fd, buf[i]);
}
 764:	8d 65 f4             	lea    -0xc(%ebp),%esp
 767:	5b                   	pop    %ebx
 768:	5e                   	pop    %esi
 769:	5f                   	pop    %edi
 76a:	5d                   	pop    %ebp
 76b:	c3                   	ret    
 76c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 770:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 772:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 779:	eb 8b                	jmp    706 <printint+0x26>
 77b:	90                   	nop
 77c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000780 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 786:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 789:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 78c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 78f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 792:	89 45 d0             	mov    %eax,-0x30(%ebp)
 795:	0f b6 1e             	movzbl (%esi),%ebx
 798:	83 c6 01             	add    $0x1,%esi
 79b:	84 db                	test   %bl,%bl
 79d:	0f 84 b0 00 00 00    	je     853 <printf+0xd3>
 7a3:	31 d2                	xor    %edx,%edx
 7a5:	eb 39                	jmp    7e0 <printf+0x60>
 7a7:	89 f6                	mov    %esi,%esi
 7a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 7b0:	83 f8 25             	cmp    $0x25,%eax
 7b3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 7b6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 7bb:	74 18                	je     7d5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7bd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 7c0:	83 ec 04             	sub    $0x4,%esp
 7c3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 7c6:	6a 01                	push   $0x1
 7c8:	50                   	push   %eax
 7c9:	57                   	push   %edi
 7ca:	e8 73 fe ff ff       	call   642 <write>
 7cf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 7d2:	83 c4 10             	add    $0x10,%esp
 7d5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7d8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 7dc:	84 db                	test   %bl,%bl
 7de:	74 73                	je     853 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 7e0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 7e2:	0f be cb             	movsbl %bl,%ecx
 7e5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 7e8:	74 c6                	je     7b0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 7ea:	83 fa 25             	cmp    $0x25,%edx
 7ed:	75 e6                	jne    7d5 <printf+0x55>
      if(c == 'd'){
 7ef:	83 f8 64             	cmp    $0x64,%eax
 7f2:	0f 84 f8 00 00 00    	je     8f0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 7f8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 7fe:	83 f9 70             	cmp    $0x70,%ecx
 801:	74 5d                	je     860 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 803:	83 f8 73             	cmp    $0x73,%eax
 806:	0f 84 84 00 00 00    	je     890 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 80c:	83 f8 63             	cmp    $0x63,%eax
 80f:	0f 84 ea 00 00 00    	je     8ff <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 815:	83 f8 25             	cmp    $0x25,%eax
 818:	0f 84 c2 00 00 00    	je     8e0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 81e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 821:	83 ec 04             	sub    $0x4,%esp
 824:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 828:	6a 01                	push   $0x1
 82a:	50                   	push   %eax
 82b:	57                   	push   %edi
 82c:	e8 11 fe ff ff       	call   642 <write>
 831:	83 c4 0c             	add    $0xc,%esp
 834:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 837:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 83a:	6a 01                	push   $0x1
 83c:	50                   	push   %eax
 83d:	57                   	push   %edi
 83e:	83 c6 01             	add    $0x1,%esi
 841:	e8 fc fd ff ff       	call   642 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 846:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 84a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 84d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 84f:	84 db                	test   %bl,%bl
 851:	75 8d                	jne    7e0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 853:	8d 65 f4             	lea    -0xc(%ebp),%esp
 856:	5b                   	pop    %ebx
 857:	5e                   	pop    %esi
 858:	5f                   	pop    %edi
 859:	5d                   	pop    %ebp
 85a:	c3                   	ret    
 85b:	90                   	nop
 85c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 860:	83 ec 0c             	sub    $0xc,%esp
 863:	b9 10 00 00 00       	mov    $0x10,%ecx
 868:	6a 00                	push   $0x0
 86a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 86d:	89 f8                	mov    %edi,%eax
 86f:	8b 13                	mov    (%ebx),%edx
 871:	e8 6a fe ff ff       	call   6e0 <printint>
        ap++;
 876:	89 d8                	mov    %ebx,%eax
 878:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 87b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 87d:	83 c0 04             	add    $0x4,%eax
 880:	89 45 d0             	mov    %eax,-0x30(%ebp)
 883:	e9 4d ff ff ff       	jmp    7d5 <printf+0x55>
 888:	90                   	nop
 889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 890:	8b 45 d0             	mov    -0x30(%ebp),%eax
 893:	8b 18                	mov    (%eax),%ebx
        ap++;
 895:	83 c0 04             	add    $0x4,%eax
 898:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 89b:	b8 aa 0d 00 00       	mov    $0xdaa,%eax
 8a0:	85 db                	test   %ebx,%ebx
 8a2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 8a5:	0f b6 03             	movzbl (%ebx),%eax
 8a8:	84 c0                	test   %al,%al
 8aa:	74 23                	je     8cf <printf+0x14f>
 8ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8b0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8b3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 8b6:	83 ec 04             	sub    $0x4,%esp
 8b9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 8bb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8be:	50                   	push   %eax
 8bf:	57                   	push   %edi
 8c0:	e8 7d fd ff ff       	call   642 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 8c5:	0f b6 03             	movzbl (%ebx),%eax
 8c8:	83 c4 10             	add    $0x10,%esp
 8cb:	84 c0                	test   %al,%al
 8cd:	75 e1                	jne    8b0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8cf:	31 d2                	xor    %edx,%edx
 8d1:	e9 ff fe ff ff       	jmp    7d5 <printf+0x55>
 8d6:	8d 76 00             	lea    0x0(%esi),%esi
 8d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
 8e3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 8e6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 8e9:	6a 01                	push   $0x1
 8eb:	e9 4c ff ff ff       	jmp    83c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8f8:	6a 01                	push   $0x1
 8fa:	e9 6b ff ff ff       	jmp    86a <printf+0xea>
 8ff:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 902:	83 ec 04             	sub    $0x4,%esp
 905:	8b 03                	mov    (%ebx),%eax
 907:	6a 01                	push   $0x1
 909:	88 45 e4             	mov    %al,-0x1c(%ebp)
 90c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 90f:	50                   	push   %eax
 910:	57                   	push   %edi
 911:	e8 2c fd ff ff       	call   642 <write>
 916:	e9 5b ff ff ff       	jmp    876 <printf+0xf6>
 91b:	66 90                	xchg   %ax,%ax
 91d:	66 90                	xchg   %ax,%ax
 91f:	90                   	nop

00000920 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 920:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	a1 e0 10 00 00       	mov    0x10e0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 92e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 930:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 933:	39 c8                	cmp    %ecx,%eax
 935:	73 19                	jae    950 <free+0x30>
 937:	89 f6                	mov    %esi,%esi
 939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 940:	39 d1                	cmp    %edx,%ecx
 942:	72 1c                	jb     960 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 944:	39 d0                	cmp    %edx,%eax
 946:	73 18                	jae    960 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 948:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 94a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 94c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 94e:	72 f0                	jb     940 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 950:	39 d0                	cmp    %edx,%eax
 952:	72 f4                	jb     948 <free+0x28>
 954:	39 d1                	cmp    %edx,%ecx
 956:	73 f0                	jae    948 <free+0x28>
 958:	90                   	nop
 959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 960:	8b 73 fc             	mov    -0x4(%ebx),%esi
 963:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 966:	39 d7                	cmp    %edx,%edi
 968:	74 19                	je     983 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 96a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 96d:	8b 50 04             	mov    0x4(%eax),%edx
 970:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 973:	39 f1                	cmp    %esi,%ecx
 975:	74 23                	je     99a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 977:	89 08                	mov    %ecx,(%eax)
  freep = p;
 979:	a3 e0 10 00 00       	mov    %eax,0x10e0
}
 97e:	5b                   	pop    %ebx
 97f:	5e                   	pop    %esi
 980:	5f                   	pop    %edi
 981:	5d                   	pop    %ebp
 982:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 983:	03 72 04             	add    0x4(%edx),%esi
 986:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 989:	8b 10                	mov    (%eax),%edx
 98b:	8b 12                	mov    (%edx),%edx
 98d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 990:	8b 50 04             	mov    0x4(%eax),%edx
 993:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 996:	39 f1                	cmp    %esi,%ecx
 998:	75 dd                	jne    977 <free+0x57>
    p->s.size += bp->s.size;
 99a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 99d:	a3 e0 10 00 00       	mov    %eax,0x10e0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 9a2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 9a5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 9a8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9aa:	5b                   	pop    %ebx
 9ab:	5e                   	pop    %esi
 9ac:	5f                   	pop    %edi
 9ad:	5d                   	pop    %ebp
 9ae:	c3                   	ret    
 9af:	90                   	nop

000009b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9bc:	8b 15 e0 10 00 00    	mov    0x10e0,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c2:	8d 78 07             	lea    0x7(%eax),%edi
 9c5:	c1 ef 03             	shr    $0x3,%edi
 9c8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 9cb:	85 d2                	test   %edx,%edx
 9cd:	0f 84 a3 00 00 00    	je     a76 <malloc+0xc6>
 9d3:	8b 02                	mov    (%edx),%eax
 9d5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 9d8:	39 cf                	cmp    %ecx,%edi
 9da:	76 74                	jbe    a50 <malloc+0xa0>
 9dc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 9e2:	be 00 10 00 00       	mov    $0x1000,%esi
 9e7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 9ee:	0f 43 f7             	cmovae %edi,%esi
 9f1:	ba 00 80 00 00       	mov    $0x8000,%edx
 9f6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 9fc:	0f 46 da             	cmovbe %edx,%ebx
 9ff:	eb 10                	jmp    a11 <malloc+0x61>
 a01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a0a:	8b 48 04             	mov    0x4(%eax),%ecx
 a0d:	39 cf                	cmp    %ecx,%edi
 a0f:	76 3f                	jbe    a50 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a11:	39 05 e0 10 00 00    	cmp    %eax,0x10e0
 a17:	89 c2                	mov    %eax,%edx
 a19:	75 ed                	jne    a08 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 a1b:	83 ec 0c             	sub    $0xc,%esp
 a1e:	53                   	push   %ebx
 a1f:	e8 86 fc ff ff       	call   6aa <sbrk>
  if(p == (char*)-1)
 a24:	83 c4 10             	add    $0x10,%esp
 a27:	83 f8 ff             	cmp    $0xffffffff,%eax
 a2a:	74 1c                	je     a48 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 a2c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 a2f:	83 ec 0c             	sub    $0xc,%esp
 a32:	83 c0 08             	add    $0x8,%eax
 a35:	50                   	push   %eax
 a36:	e8 e5 fe ff ff       	call   920 <free>
  return freep;
 a3b:	8b 15 e0 10 00 00    	mov    0x10e0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 a41:	83 c4 10             	add    $0x10,%esp
 a44:	85 d2                	test   %edx,%edx
 a46:	75 c0                	jne    a08 <malloc+0x58>
        return 0;
 a48:	31 c0                	xor    %eax,%eax
 a4a:	eb 1c                	jmp    a68 <malloc+0xb8>
 a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 a50:	39 cf                	cmp    %ecx,%edi
 a52:	74 1c                	je     a70 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 a54:	29 f9                	sub    %edi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a5c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 a5f:	89 15 e0 10 00 00    	mov    %edx,0x10e0
      return (void*)(p + 1);
 a65:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 a68:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 a70:	8b 08                	mov    (%eax),%ecx
 a72:	89 0a                	mov    %ecx,(%edx)
 a74:	eb e9                	jmp    a5f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 a76:	c7 05 e0 10 00 00 e4 	movl   $0x10e4,0x10e0
 a7d:	10 00 00 
 a80:	c7 05 e4 10 00 00 e4 	movl   $0x10e4,0x10e4
 a87:	10 00 00 
    base.s.size = 0;
 a8a:	b8 e4 10 00 00       	mov    $0x10e4,%eax
 a8f:	c7 05 e8 10 00 00 00 	movl   $0x0,0x10e8
 a96:	00 00 00 
 a99:	e9 3e ff ff ff       	jmp    9dc <malloc+0x2c>

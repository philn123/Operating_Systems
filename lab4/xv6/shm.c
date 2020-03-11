#include "param.h"
#include "types.h"
#include "defs.h"
#include "x86.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"

struct {
  struct spinlock lock;
  struct shm_page {
    uint id;
    char *frame;
    int refcnt;
  } shm_pages[64];
} shm_table;

void shminit() {
  int i;
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  for (i = 0; i< 64; i++) {
    shm_table.shm_pages[i].id =0;
    shm_table.shm_pages[i].frame =0;
    shm_table.shm_pages[i].refcnt =0;
  }
  release(&(shm_table.lock));
}

int shm_open(int id, char **pointer) {

//you write this
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  for(int i = 0; i < 64; ++i)
  {
    if(shm_table.shm_pages[i].id == id)
    {
      if(mappages(myproc()->pgdir, (void *)PGROUNDUP(myproc()->sz), PGSIZE, 
      V2P(shm_table.shm_pages[i].frame), PTE_W|PTE_U) == 0)
      {
        shm_table.shm_pages[i].refcnt += 1;
        *pointer = (char *)PGROUNDUP(myproc()->sz);
        myproc()->sz += PGSIZE;
        release(&(shm_table.lock));
        return 0;
      }
      else{
        release(&(shm_table.lock));
        return -1;

      }
    }
  }

  //we look for id first, and then we look for first available page
  for(int j = 0; j < 64; ++j)
  {
    if(shm_table.shm_pages[j].id == 0)
    {
      shm_table.shm_pages[j].id = id;
      shm_table.shm_pages[j].frame = kalloc();
      memset(shm_table.shm_pages[j].frame, 0, PGSIZE);
      shm_table.shm_pages[j].refcnt = 1;

      if(mappages(myproc()->pgdir, (void *)PGROUNDUP(myproc()->sz), PGSIZE, 
      V2P(shm_table.shm_pages[j].frame), PTE_W|PTE_U) == 0)
      {
        *pointer = (char *)PGROUNDUP(myproc()->sz);
        myproc()->sz += PGSIZE;
        release(&(shm_table.lock));
        return 0;
      }
      else
      {
        release(&(shm_table.lock));
        return -1;

      }

    }
  }
  release(&(shm_table.lock));
  return 0; //added to remove compiler warning -- you should decide what to return
}


int shm_close(int id) {
//you write this too!
initlock(&(shm_table.lock), "SHM lock");
acquire(&(shm_table.lock));

for(int i = 0; i < 64; ++i)
{
  if(shm_table.shm_pages[i].id == id)
  {
    shm_table.shm_pages[i].refcnt--;
    if(shm_table.shm_pages[i].refcnt > 0)
    {
      //do nothing
    }
    else 
    {
      shm_table.shm_pages[i].id = 0;
      shm_table.shm_pages[i].frame = 0;
      shm_table.shm_pages[i].refcnt = 0;
    }
    break;
  }
}
release(&(shm_table.lock));
return 0; //added to remove compiler warning -- you should decide what to return
}

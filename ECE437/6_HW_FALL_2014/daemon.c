#include<stdio.h>
#include<unistd.h>

#define TIME 1

int main(void)
{
  int i, time;

  FILE *pFile,*ppF;
  long size,prevsize;

  pFile = fopen("size.txt","rb");
  ppF = fopen("size.log","wb");

  if(pFile==NULL) 
  {
    fprintf(stderr, "Error opening file");
    return 1;
  }
  else if(ppF==NULL)
  {
    fprintf(stderr,"Error opening file");
    return 1;
  }
  else
  {
    fseek(pFile, 0, SEEK_END);
    prevsize=ftell(pFile);
    sleep(TIME);

    for(i=1;i<=60;i++)
    {
      fseek(pFile, 0, SEEK_END);
      size=ftell(pFile);
      if(prevsize != size)
      {
        fprintf(ppF,"Size of size.txt: %ld bytes at %d seconds\n",size,i*10);
        prevsize = size;
      }
      sleep(TIME);
    }
  }

  fclose(pFile);
  fclose(ppF);

  return 0;

}

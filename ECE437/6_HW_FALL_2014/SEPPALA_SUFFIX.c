#include <stdio.h>
#include <dirent.h>
#include <string.h>

int main(int argc, char *argv[])
{
  struct dirent 
	  *directory_entry;
 
  DIR *directory_to_open;

  if(argc<3)
  {
    fprintf(stderr, "ERROR\r\nUsage: ./PROGRAM_NAME <directory_name> <.extention>\n");
    return 1;
  }

  directory_to_open = opendir (argv[1]);
  if(directory_to_open == NULL)
  {
    fprintf(stderr, "ERROR\r\nCannot open directory '%s'\nDoes it exist?\r\n",argv[1]);
    return 1;
  }

  while ((directory_entry = readdir(directory_to_open)) != NULL)
  {
    if(strstr(directory_entry->d_name,argv[2])!=NULL)
    {
      printf("\t%s\r\n", directory_entry -> d_name);
    }
  }
  closedir(directory_to_open);
  return 0;

}

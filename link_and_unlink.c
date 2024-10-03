#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/stat.h>

struct stat filestat;

int main(int argc, char **argv){
	
	if(argc != 3){
		printf("Pass the arguments\n");
		exit(1);
	}

	int a = link(argv[1], argv[2]);
	if(a != -1){
		printf("Linked created successfully\n");
		printf("%s is linked to %s\n ", argv[2], argv[1]);
	}
	else{
		printf("Link is not created\n");
		exit(1);
	}

	if(stat(argv[1], &filestat) < 0){
		perror("stat");
		exit(1);
	}

	printf("Number of hard links to %s : %lu\n", argv[1], filestat.st_nlink);

	printf("Now unlinking %s\n", argv[2]);
	int b = unlink(argv[2]);

	if(b != -1){
            	 printf("Uninked  successfully\n");
               	 printf("%s is unlinked to %s\n ", argv[2], argv[1]);
        }
        else{
                printf("Unlink not possible\n");
                exit(1);
        }

        if(stat(argv[1], &filestat) < 0){
                perror("stat");
                exit(1);
        }

        printf("Number of hard links to %s : %lu\n", argv[1], filestat.st_nlink);
	
	return 0;
}



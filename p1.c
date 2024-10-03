#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[]){
	FILE *ip;
	char str[100];

	if(argc != 2){
		printf("Usage : commmand (./a.out) filename(example.txt)\n");
		exit(0);
	}

	ip = fopen(argv[1], "r");

	if(ip == NULL){
		printf("File does not exist\n");
		exit(0);
	}

	while(fgets(str, 100, ip) != NULL)
		printf("%s", str);

	fclose(ip);

	return 0;
}



#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[]){

	FILE *source, *destination;
	char ch;

	if(argc != 3){
		printf("Usage: command sourceFile destination \n");
		exit(1);
	}

	source = fopen(argv[1], "r");
	if(source == NULL){
		printf("Error in opening source file\n");
		exit(1);
	}

	destination = fopen(argv[2], "r");
	if(destination == NULL){
		printf("Error in openning destination file\n");
		fclose(source);
		exit(1);
	}

	destination = fopen(argv[2], "w");
	while((ch = fgetc(source)) != EOF)
		fputc(ch, destination);

	fclose(source);
	fclose(destination);

	printf("File copied successfully\n");

	return 0;
}



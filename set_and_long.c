#include<stdio.h>
#include<stdlib.h>
#include<setjmp.h>

jmp_buf buffer;

void func(){
	printf("Inside the func()\n");
	printf("func() will long jump back to main function\n");
	longjmp(buffer, 1);
	printf("This line will never print\n");
}

int main(){
	int r;

	printf("Starting main\n");

	r = setjmp(buffer);

	if(r == 0){
		printf("Jumping to func() through setjmp\n");
		func();
	}
	else{
		printf("Return to main() via long jump\n");
	}

	printf("Exiting the program\n");

	return 0;
}


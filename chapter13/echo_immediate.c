/* ������Ӧ�û�����*/
#include<stdio.h>
#include<stdlib.h>
#define SIZE 10
int wwwmain(void) {
    int ch;
				char buf[SIZE];
				setvbuf(stdin, NULL , _IONBF, 0);
				while ((ch = getchar())!= EOF)
				{
								putchar(ch);
				}

				return 0;

}
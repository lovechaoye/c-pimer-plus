/* exclusive.c -- 独占模式打开文件*/
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>
int m1ain(int argc,char * argv[]) {
				if (fclose(stderr)) {
								perror(NULL);
								exit(EXIT_FAILURE);
				}
    //FILE* fp;
				//if (argc != 2)
				//{
				//				printf("please input filename\n");
				//				exit(EXIT_FAILURE);
				//}
				//if ((fp = fopen(argv[1],"wbx")) == NULL)
				//{
				//				perror("file open failed");
				//				exit(EXIT_FAILURE);
				//}
				//getchar();
				//fclose(fp);
				//printf("file closed!\n");
				return 0;
}
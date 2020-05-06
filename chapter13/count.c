/* count.c -- 使用标准 I/O*/
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>
int m2ain(int argc, char* argv[]) {
    int ch; //读取文件，储存每个字符的地方
    FILE* fp;  //文件指针
    unsigned long count = 0;
    if (argc != 2)
    {
        printf("Usage: %s filename\n",argv);
        exit(EXIT_FAILURE);
    }
    if ((fp = fopen(argv[1],"r"))== NULL)
    {
        printf("Can't open %s\n",argv[1]);
        exit(EXIT_FAILURE);
    }
    while ((ch=getc(fp))!=EOF)
    {
        putc(ch,stdout);    //与putchar相同
        count++;
    }
    fclose(fp);
    printf("File %s has %lu characters\n",argv[1],count);
    return 0;
}
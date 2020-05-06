/* tmpfile.c -- tmpfile()函数的用法 */\
/* 
    函数原型：
    FILE *tmpfile(void);(1)
    errno_t tmpfile_s(FILE * restrict * restrict streamptr); 	(2)	(since C11)
*/
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>
#define SIZE 1024*1024*1024
int maiwwn(void) {
    FILE* fp;
    int ch; //用于处理EOF
    char buf[] ="this is tmpfile";
    //fp = tmpfile();
    fp = fopen("tmp","rb+");
    if (fp == NULL)
    {
        perror(NULL);
        exit(EXIT_FAILURE);
    }
    //fprintf(fp,"%s","this is tmpfile\n");
    //printf("%p\n",fp);
    //if (fwrite(buf, sizeof(char), sizeof(buf), fp) < 0)
    //{
    //    perror(NULL);
    //    exit(EXIT_FAILURE);
    //}

    //rewind(fp);
    fseek(fp,0L,SEEK_END);
    while ((ch = fgetc(fp))!=EOF)
    {
        putchar(ch);
    }
    while (0)
    {
        //fwrite(buf, sizeof(char), SIZE, fp);
    }
    fclose(fp);
    return 0;
}
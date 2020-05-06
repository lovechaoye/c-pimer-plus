/* fseek_demo.c -- 直接创建文件，判断能否拉大文件*/
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>
char buff[1024 * 1024];
int mdddain(void) {
    FILE* fp;
    long resize;
    
    const char* file = "av.mp4";
    if ((fp = fopen(file, "wb")) == NULL) {
        perror(NULL);
        exit(EXIT_FAILURE);
    }
    resize = 1024*1024;
    fwrite(buff,1024*1024,sizeof(char),fp);
    //if (fseek(fp, resize, SEEK_END))
    //{
    //    perror(NULL);
    //    exit(EXIT_FAILURE);
    //}
    if (fclose(fp) == -1) {
        perror(NULL);
        exit(EXIT_FAILURE);
    }
    return 0;
}
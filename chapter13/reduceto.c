/* reduceto.c -- 把文件压缩成原来的1/3！ */
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>  //提供exit()的原型
#include<string.h>  //提供 strcpy()、strcat()的原型
#define LEN 40

int mai22n(int argc, char* argv[]) {
    FILE* in, * out;  //声明指向FILE的指针
    int ch; //用int类型的变量存储EOF
    char name[LEN]; //储存输出的文件名
    int count = 0;

    //检查命令行参数
    if (argc < 2)
    {
        fprintf(stderr,"Usage: %s filename\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    //设置输入
    if ((in = fopen(argv[1],"r")) == NULL)
    {
        perror("I couldn't open the file");
        exit(EXIT_FAILURE);
    }

    //设置输入
    strncpy(name,argv[1],LEN - 5); //拷贝文件名
    name[LEN - 5] = '\0';
    strcat(name,".red");  //在文件名后添加.red
    if ((out = fopen(name,"w")) == NULL)
    {
        perror("Can't create output file");
        exit(EXIT_FAILURE);
    }
    //拷贝数据
    while ((ch = fgetc(in)) != EOF)
    {
        if (count++ % 3 == 0)
        {
            putc(ch,out);
        }
    }
    if (fclose(in) != 0 || fclose(out) != 0)
    {
        perror("Error in closing files");
    }

    return 0;
}

/* quick.c -- ���ٲ��������k��Ԫ��*/
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>
#include<assert.h>
#include<stdbool.h>
#include<time.h>
#define SIZE 20

int quick_find(int array[], int first, int last, int target);
void swap(int array[], int index1, int index2);
int partition(int array[], int left, int right);
void print(int array[],int size);

int main(void) {
    int i;
    int target;
    int target_value;
    int* array =(int*) malloc(SIZE*sizeof(int));
    srand(time(NULL));
    for ( i = 0; i < SIZE; i++)
    {
        array[i] = rand();
    }
    printf("input a num less than or equal %d and greater than 0,exit enter 'q'\n",SIZE);
    while (scanf("%d",&target) == 1 && target >= 1 && target <= SIZE)
    {
        int target_value = quick_find(array, 0, SIZE - 1, target);
        printf("target = %d,value = %d\n", target, target_value);
        print(array, SIZE);
    }
    free(array);
    return 0;
}
/*
    array[],����������
    first,������ʼλ�� ����0����
    last,�������λ�ã���0����
    target,Ŀ��ֵλ�ã��ӵ�һ��ʼ
*/
int quick_find(int array[], int first, int last, int target) {
    assert(first <= last && target >= 1 && ((target-1) <= last -first));
    int i = first;
    int j = last;
    int index = 0;
    int flag = 0;
    while (true)
    {
        index = partition(array, i, j);
        flag = target - (index - first +1);
        if (flag == 0) {
            return array[index];
        }
        else if (flag > 0) {
            i = index + 1;
        }
        else {
            j = index - 1;
        }
    }
}

int partition(int array[],int left,int right) {
    //ȡ���ұ�Ԫ����Ϊ����
    int pivot = right;
    int pivot_value = array[right];
    int i = left;
    int j = right - 1;
    while (true)
    {
        while (i< right && array[i] <= pivot_value)
        {
            i++;
        }
        while (j >= left && array[j] >= pivot_value)
        {
            j--;
        }
        if (i > j ) {
            break;
        }
        swap(array, i, j);
    }
    if (i != pivot) {
        swap(array,i,pivot);
    }
    return i;
}

void swap(int array[], int index1, int index2) {
    int temp = array[index1];
    array[index1] = array[index2];
    array[index2] = temp;
}

void print(int array[], int length) {
    size_t i;
    i = -1;
    for ( i = 0; i < length; i++)
    {
        printf("%5d\x20:\x20%5d\n",i+1,array[i]);
    }
}
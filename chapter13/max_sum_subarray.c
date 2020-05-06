/* max_sum_subarray.c -- 一个非空数组，每个元素有正有负，求出一个子数组，它的和最大*/
#include<stdio.h>
#include<stdlib.h>
int sum(int array[], int left, int right);//包含左右索引
int getMaxSum(int array[], int left, int right);
int getMaxSum2(int array[], int left, int right);
int max_sub1(int array[], int length);
int max_sub2(int array[], int length);
int msssain(void) {
    //int array[] = {-1,-3,3,5,-4,3,2,-2,3,6};
    int array[] = { -84,-87,-78,-16,-94,-36,-87,-93,-50,-22,-63,-28,-91,-60,-64,-27,-41,-27,-73,-37,-12,-69,-68,-30,-83,-31,-63,-24,-68,-36,-30,-3,-23,-59,-70,-68,-94,-57,-12,-43,-30,-74,-22,-20,-85,-38,-99,-25,-16,-71,-14,-27,-92,-81,-57,-74,-63,-71,-97,-82,-6,-26,-85,-28,-37,-6,-47,-30,-14,-58,-25,-96,-83,-46,-15,-68,-35,-65,-44,-51,-88,-9,-77,-79,-89,-85,-4,-52,-55,-100,-33,-61,-77,-69,-40,-13,-27,-87,-95,-40 };
				//int max = getMaxSum(array,0,sizeof(array)/sizeof(int)-1);
				int max = max_sub2(array,sizeof(array)/sizeof(int)-1);
				printf("max = %d\n",max);
				return 0;
}

int getMaxSum(int array[],int left,int right) {
				if (left == right)
				{
								return array[left];
				}
				int maxValue ;
				int more;
				maxValue = sum(array, left, right);
				int sumLeft = getMaxSum(array, left,right -1);
				int sumRight = getMaxSum(array, left+1,right);
				more = sumLeft > sumRight ? sumLeft : sumRight;
				return maxValue > more ? maxValue : more;
}

int sum(int array[],int left,int right) {
				int i;
				int sum = 0;
				for (i = left; i <=right ; i++)
				{
								sum += array[i];
				}
				return sum;
}

//一次性分一半，分到底的速度更快，递归属的层次更低，更有利于递归的进行
int getMaxSum2(int array[], int left, int right) {
				if (left == right)
				{
								return array[left];
				}
				//分解元问题,递归子问题
				int mid = left + (right - left) / 2;
				int sumLeft = getMaxSum2(array, left, mid);
				int sumRight = getMaxSum2(array, mid + 1, right);
				//中间最大
				int summid ;
				int more;
				int i = mid-1;
				int j = mid+1;
				int leftMax = 0;
				int rightMax = 0;
				if (mid -1>=left) {
								leftMax = array[i];
				}
				if (mid + 1 <= right) {
								rightMax = array[j];
				}

				while (i>=left)
				{
								int temp = sum(array,i,mid -1);
								leftMax = leftMax > temp ? leftMax : temp;
								i--;
				}

				while (j <= right)
				{
								int temp = sum(array, mid + 1, j);
								rightMax = rightMax > temp ? rightMax : temp;
								j++;
				}
				summid = leftMax + rightMax + array[mid];
				more = sumLeft > sumRight ? sumLeft : sumRight;
				return summid > more ? summid : more;
}

//蛮力枚举，做蛮力枚举得对问题做好分类，然后，才可以写出来问题的循环
int max_sub1(int array[],int length) {
				//思路是穷尽一切连续的子数组，查出最大值是多少
				//子数组有两种开始的分类方法，一是，先计算长度是一的，在计算长度是2的，以此类推
				int max = array[0];   //max的取值可以随机选一个，而不是0，防止数组元素都会负数
				int sum;
				int i;  //i在这里表示长度
				int j;
				int k;
				for (i = 1; i <= length; i++)
				{
								for ( j = 0; j < length; j++)  //j是子数组的起点
								{
												sum = 0;
												for (k = j; k < j+i && k < length; k++)  //这里是计算子数组的和
												{
																sum += array[k];
												}
												if (sum > max)
												{
																max = sum;
												}

								}
				}

				return max;
}

//蛮力枚举法，子数组可以分成两种，每一个节点当开始的节点，然后依次往后走，这样子的求和计算比较简单
int max_sub2(int array[], int length) {
				int max = array[0];   //max的取值可以随机选一个，而不是0，防止数组元素都会负数
				int sum;
				int i;  //i在这里表示长度
				int j;
				for (i = 0; i < length; i++)
				{
								sum = 0;
								//以array[i] 为起点，数组依次增大都是子数组
								for (j = i; j < length; j++)
								{
												sum += array[j];
												if (sum > max)
												{
																max = sum;
												}
								}
				}
				return max;
}
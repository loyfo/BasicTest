/**
 6、 设计一个函数，找出整型数组元素的最小值（C语言编程题）
 */

#include<stdio.h>
//*a表示传递过来的数组，length表示数组的长度
int min(int *a,int length)
{
    //定义一个变量j存储数组的最小值，并先将数组的第一个数赋给j
    int j = a[0];
    //使用for循环遍历数组
    for(int i=1; i<length; i++)
        //判断j是否大于当前遍历到的数组元素的值，如果大于，将该元素的值赋给j
        if(j>a[i])
            j = a[i];
    //返回数组的最小值j
    return j;
}






/**
int main()
{
    int b[3]={1,3,2};
    int c=min(b, 3);
    printf("%d",c);
    
    }*/
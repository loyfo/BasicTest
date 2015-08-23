//
//  main.m
//  测试题3
//
//  Created by hwp on 15/8/7.
//  Copyright (c) 2015年 hwp. All rights reserved.
//
//3、 以下程序运行后的打印结果是__10__(需要写上分析思路）
#include <stdio.h>
void change(int *n);
int main()
{
    int a = 90;
    //将变量a的地址作为参数代入“change”函数中运算
    change(&a);
    
    printf("%d\n", a);
    
    return 0;
}
void change(int *n)
{
    //此时*n代表&a所对应的值，即为a的值，对*n赋值10相当于对变量a赋值10
    *n = 10;
}
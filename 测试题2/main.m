//
//  main.m
//  测试题2
//
//  Created by hwp on 15/8/7.
//  Copyright (c) 2015年 hwp. All rights reserved.
//
//2、 下面代码打印结果是___b=12,a=7_______(需要写上分析思路）
#include <stdio.h>
int main(int argc, const char * argv[])
{
    int b;
    int a = 5;
    //（++a）表示a先自加再参加运算，（a++）表示a先参与运算再自加，即b=6+6=12；a自加两次，即a=7
    b = (++a) + (a++);
    
    printf("b=%d, a=%d\n", b, a);
    return 0;
}
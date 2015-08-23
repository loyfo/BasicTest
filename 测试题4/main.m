//
//  main.m
//  测试题4
//
//  Created by hwp on 15/8/7.
//  Copyright (c) 2015年 hwp. All rights reserved.
//

//4、 以下程序运行后的打印结果是___c is 35___(需要写上分析思路）
//预定义函数pingfang()，返回参数自乘
#define pingfang(a) (a*a)
#include "stdio.h"
int main()
{
    //由于define只是简单的替换，因此此时的式子变为c=5+5*5+5,即c=35
    int c = pingfang(5+5);
    printf("c is %d\n", c);
    return 0;
}
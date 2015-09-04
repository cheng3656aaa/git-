//
//  CylMeController.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/1.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "CylMeController.h"
#import "Cylsetingcontronller.h"

@interface CylMeController ()

@end

@implementation CylMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"我的";
/*
    //创建右边导航器的内容
    //创建右边的月亮按钮
    UIButton *moombtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [moombtn setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon" ]forState:UIControlStateNormal];
    [moombtn setBackgroundImage:[UIImage imageNamed:@"mine-sun-icon-click" ]forState:UIControlStateHighlighted];
    //设置图片的大小
    [moombtn sizeToFit];
    
    //监听事件
    [moombtn addTarget:self action:@selector(moonClick) forControlEvents:UIControlEventTouchUpInside];
    //创建设置按钮
    UIButton *setingbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [setingbtn setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [setingbtn setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    
    //设置图片大小
    [setingbtn sizeToFit];
    
    //监听点击事件
    [setingbtn addTarget:self action:@selector(setingClick) forControlEvents:UIControlEventTouchUpInside];
    
    //这个地方(rightBarButtonItems)后面要带s,代表是组 不然会警告
    self.navigationItem.rightBarButtonItems = @[
                                                [[UIBarButtonItem alloc] initWithCustomView:setingbtn],
                                               [[UIBarButtonItem alloc]initWithCustomView:moombtn]
                                               ];
  */
    //创建右边导航器的内容
    //创建右边的月亮按钮
    UIBarButtonItem *moonbtn = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-sun-icon-click" tarGet:self action:@selector(moonClick)];
    
    //创建设置按钮
    UIBarButtonItem *setingbtn = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-moon-icon-click" tarGet:self action:@selector(setingClick)];
    
    self.navigationItem.rightBarButtonItems = @[setingbtn,moonbtn];
    
}

- (void)moonClick
{
    //NSLog(@"%s",__func__);
    CylLogFunc;
    
}

- (void)setingClick
{
    Cylsetingcontronller *seting = [[Cylsetingcontronller  alloc] init];
    
    // 当push这个控制器时,会自动隐藏底部的工具条
    seting.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:seting animated:YES];
}
@end

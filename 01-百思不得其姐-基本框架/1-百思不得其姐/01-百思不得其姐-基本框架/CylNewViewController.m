//
//  CylNewViewController.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/1.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "CylNewViewController.h"

@interface CylNewViewController ()

@end

@implementation CylNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
  /*
    //设置左边导航栏内容
    UIButton *btnTag = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnTag setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon" ]forState:UIControlStateNormal];
    [btnTag setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick" ]forState:UIControlStateHighlighted];
    //设置图片的大小
    [btnTag sizeToFit];
    
    //监听事件
    [btnTag addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    
    //添加到左边导航器上
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnTag];
    */
    //设置左边导航栏内容
    UIBarButtonItem * btnTag = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" tarGet:self action:@selector(tagClick)];
    self.navigationItem.leftBarButtonItems = @[btnTag];
}

- (void)tagClick
{
    CylLogFunc;
}

@end

//
//  CylEssenceViewController.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/1.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "CylEssenceViewController.h"

@interface CylEssenceViewController ()

@end

@implementation CylEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
 /*
    //设置左边导航栏内容
    UIButton *btnEssence = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnEssence setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon" ]forState:UIControlStateNormal];
    [btnEssence setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick" ]forState:UIControlStateHighlighted];
    //设置图片的大小
    [btnEssence sizeToFit];
    
    //监听事件
    [btnEssence addTarget:self action:@selector(EssenceClick) forControlEvents:UIControlEventTouchUpInside];
    
    //添加到左边导航器上
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnEssence];
  */
    //设置左边导航栏内容
    UIBarButtonItem *btnEssence = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" tarGet:self action:@selector(EssenceClick)];
    self.navigationItem.leftBarButtonItems = @[btnEssence];
}

- (void)EssenceClick
{
    CylLogFunc;
}

@end

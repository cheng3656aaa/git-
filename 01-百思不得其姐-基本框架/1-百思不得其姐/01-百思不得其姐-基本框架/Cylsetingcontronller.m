//
//  Cylsetingcontronller.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/3.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "Cylsetingcontronller.h"

@implementation Cylsetingcontronller
  //设置标题
- (void)viewDidLoad
{
     //设置标题
    self.navigationItem.title = @"设置";
    
    //设置左上角的返回按钮
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //点击按钮是文字染色的变化
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    //设置返回图标
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
    
    //设置图片大小
    [backBtn sizeToFit];
    
    //监听按钮点击
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    //设置返回图标的位置
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0,0);
    
    //添加到导航条中去
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
  
}

- (void)back
{     //设置动画效果
    [self.navigationController popViewControllerAnimated:YES];

}
@end

//
//  CylFriendTrendsViewController.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/1.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "CylFriendTrendsViewController.h"

@interface CylFriendTrendsViewController ()

@end

@implementation CylFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"我的关注";
  /*
    //设置左边导航栏内容
    UIButton *btnFriend = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnFriend setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon" ]forState:UIControlStateNormal];
    [btnFriend setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click" ]forState:UIControlStateHighlighted];
    //设置图片的大小
    [btnFriend sizeToFit];
    
    //监听事件
    [btnFriend addTarget:self action:@selector(friendClick) forControlEvents:UIControlEventTouchUpInside];
    
    //添加到左边导航器上
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnFriend];
   */
     //设置左边导航栏内容
    UIBarButtonItem *friendBtn = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" tarGet:self action:@selector(friendClick)];
    self.navigationItem.leftBarButtonItems = @[friendBtn];
}

- (void)friendClick
{
    UITableViewController *tableV = [[UITableViewController alloc] init];
    [self.navigationController pushViewController:tableV animated:YES];
}

@end

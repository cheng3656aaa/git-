//
//  CyltabBarViewController.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/1.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "CyltabBarViewController.h"
#import "CylEssenceViewController.h"
#import "CylFriendTrendsViewController.h"
#import "CylMeController.h"
#import "CylNewViewController.h"
#import "Cyltabbar.h"

@interface CyltabBarViewController ()

@end

@implementation CyltabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置item
    [self setupItem];
   //添加子控制器
    [self setupChlidVc];
    
    //设置tabbar
    [self setupTabbar];
    
}

- (void)setupTabbar
{
    [self setValue:[[Cyltabbar alloc]init] forKey:@"tabBar"];

}
/**添加子控件*/
- (void)setupChlidVc
{
    [self setChildVc:[[CylEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selecImage:@"tabBar_essence_click_icon"];
    
    [self setChildVc:[[CylNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selecImage:@"tabBar_new_click_icon"];
    
    [self setChildVc:[[CylFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selecImage:@"tabBar_friendTrends_click_icon"];
    
    [self setChildVc:[[CylMeController alloc] init] title:@"我" image:@"tabBar_me_icon" selecImage:@"tabBar_me_click_icon"];

}
//方法抽取
- (void)setChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString*)image selecImage:(NSString*)selecImage
{
    //创建个导航控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
   
    //设置子控制器tabbaritem
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:image];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selecImage];
   
}

- (void)setupItem
{
    //设置字体的属性
    NSMutableDictionary *attrsM = [NSMutableDictionary dictionary];
    //设置字体的颜色
    attrsM[NSForegroundColorAttributeName] = [UIColor grayColor];
    //设置字体的大小
    attrsM[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    
    //设置选中的属性
    NSMutableDictionary *selecAttrsM = [NSMutableDictionary dictionary];
    //选中的颜色
    selecAttrsM[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    
    //统一给你uitabbarItem设置属性
    // 只有后面带有UI_APPEARANCE_SELECTOR的属性或方法, 才可以通过appearance对象来统一设置
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrsM forState:UIControlStateNormal];
    [item setTitleTextAttributes:selecAttrsM forState:UIControlStateSelected];
    
    
}
    
@end

//
//  AppDelegate.m
//  cylweibo
//
//  Created by CYL－Mac on 15/8/30.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "AppDelegate.h"
#import "homeControllerViewController.h"
#import "discoverController.h"
#import "massageController.h"
#import "profileController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //设置窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //设置根控制器
    UITabBarController * tabBar = [[UITabBarController alloc] init];
   self. window.rootViewController = tabBar;
    //设置子控制器
    
    homeControllerViewController *home = [[homeControllerViewController alloc] init];
    [self addClidevc:home image:@"tabbar_home" title:@"首页" selectedImage:@"tabbar_home_selected"];
    
    discoverController *discover = [[discoverController alloc] init];
    [self addClidevc:discover image:@"tabbar_message_center" title:@"消息" selectedImage:@"tabbar_message_center_selected"];
    
    massageController *massage = [[massageController alloc] init];
    [self addClidevc:massage  image:@"tabbar_discover" title:@"发现" selectedImage:@"tabbar_discover_selected"];
    
    profileController*profile = [[profileController alloc] init];
    [self addClidevc:profile image:@"tabbar_profile" title:@"我" selectedImage:@"tabbar_profile_selected"];
    //添加到控制器组里
    tabBar.viewControllers = @[home,discover,massage,profile];
        //显示
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)addClidevc:(UIViewController*)childVc image:(NSString*)image title:(NSString *)title selectedImage:(NSString*)selecImage
{    //设置文字和图片
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selecImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置文字
    NSMutableDictionary *diacM = [NSMutableDictionary dictionary];
    diacM[NSForegroundColorAttributeName] = rgbColor(123,123,123);
    
    NSMutableDictionary *selecM = [NSMutableDictionary dictionary];
    selecM[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    //图片状态
    [childVc.tabBarItem setTitleTextAttributes:diacM forState:UIControlStateNormal];
    //选中的图片状态
    [childVc.tabBarItem setTitleTextAttributes:selecM forState:UIControlStateSelected];
    childVc.view.backgroundColor = cylColor;
    
    
}
- (void)laji
{    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = cylColor;
    vc1.tabBarItem.title = @"首页";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    //选中的图片保持自己的颜色
    //    UIImage* homeSelectedImage = [UIImage imageNamed:@"tabbar_home_selected"];
    //    [homeSelectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc1.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置选中的字体颜色为黑色
    NSMutableDictionary *dicM1 = [NSMutableDictionary dictionary];
    dicM1[NSForegroundColorAttributeName] = [UIColor blackColor];
    [ vc1.tabBarItem setTitleTextAttributes:dicM1 forState:UIControlStateNormal];
    
    //设置选中的图片字体
    NSMutableDictionary *SeledicM1 = [NSMutableDictionary dictionary];
    SeledicM1[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [ vc1.tabBarItem setTitleTextAttributes:SeledicM1 forState:UIControlStateSelected];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = cylColor;
    vc2.tabBarItem.title = @"消息";
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    vc2.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_message_center_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置选中的字体颜色为黑色
    NSMutableDictionary *dicM2 = [NSMutableDictionary dictionary];
    dicM2[NSForegroundColorAttributeName] = [UIColor blackColor];
    [ vc1.tabBarItem setTitleTextAttributes:dicM2 forState:UIControlStateNormal];
    
    //设置选中的图片字体
    NSMutableDictionary *SeledicM2 = [NSMutableDictionary dictionary];
    SeledicM2[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [ vc1.tabBarItem setTitleTextAttributes:SeledicM2 forState:UIControlStateSelected];
    
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = cylColor;
    vc3.tabBarItem.title = @"发现";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    vc3.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_discover_selected_os7"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置选中的字体颜色为黑色
    NSMutableDictionary *dicM3 = [NSMutableDictionary dictionary];
    dicM3[NSForegroundColorAttributeName] = [UIColor blackColor];
    [ vc1.tabBarItem setTitleTextAttributes:dicM3 forState:UIControlStateNormal];
    
    //设置选中的图片字体
    NSMutableDictionary *SeledicM3 = [NSMutableDictionary dictionary];
    SeledicM3[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [ vc1.tabBarItem setTitleTextAttributes:SeledicM3 forState:UIControlStateSelected];
    
    
    UIViewController *vc4 = [[UIViewController alloc] init];
    vc4.view.backgroundColor = cylColor;
    vc4.tabBarItem.title = @"我";
    vc4.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    
    vc2.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_profile_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置选中的字体颜色为黑色
    NSMutableDictionary *dicM4 = [NSMutableDictionary dictionary];
    dicM4[NSForegroundColorAttributeName] = [UIColor blackColor];
    [ vc1.tabBarItem setTitleTextAttributes:dicM4 forState:UIControlStateNormal];
    
    //设置选中的图片字体
    NSMutableDictionary *SeledicM4 = [NSMutableDictionary dictionary];
    SeledicM4[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [ vc1.tabBarItem setTitleTextAttributes:SeledicM4 forState:UIControlStateSelected];

}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
 
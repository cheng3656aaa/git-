
//
//  UIBarButtonItem+EXtension.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/3.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "UIBarButtonItem+EXtension.h"

@implementation UIBarButtonItem (EXtension)
+ (instancetype)itemWithImage:(NSString*)image highImage:(NSString*)highImage tarGet:(id)target action:(SEL)action{
    
    //方法的抽取
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button sizeToFit];
     
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];


}
@end

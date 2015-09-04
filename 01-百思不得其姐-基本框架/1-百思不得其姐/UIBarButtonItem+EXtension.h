//
//  UIBarButtonItem+EXtension.h
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/3.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (EXtension)
+ (instancetype)itemWithImage:(NSString*)image highImage:(NSString*)highImage tarGet:(id)target action:(SEL)action;
@end

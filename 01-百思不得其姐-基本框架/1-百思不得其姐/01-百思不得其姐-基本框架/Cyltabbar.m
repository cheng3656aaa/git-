//
//  Cyltabbar.m
//  01-百思不得其姐-基本框架
//
//  Created by CYL－Mac on 15/9/1.
//  Copyright (c) 2015年 CYL－Mac. All rights reserved.
//

#import "Cyltabbar.h"

@interface Cyltabbar()
//发布按钮
@property (nonatomic,weak)UIButton * publishButton;

@end
@implementation Cyltabbar

- (instancetype)initWithFrame:(CGRect)frame
{ NSLog(@"%s",__func__);
    
    if(self = [super initWithFrame:frame]){
    UIButton *publishbtn = [UIButton buttonWithType:UIButtonTypeCustom];
                                
//    [publishbtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishbtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
    [publishbtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
     //设置图片的尺寸大小
      [publishbtn sizeToFit];
       
    [publishbtn addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
                                
     [self addSubview:publishbtn];
     self.publishButton = publishbtn;
 }

  return self;
}

- (void)publishClick
{
    NSLog(@"%s",__func__);

}

//布局子控件
- (void)layoutSubviews
{
    [super layoutSubviews];
     NSLog(@"%s",__func__);
    self.publishButton.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.5);
    //按钮索引
    int index= 0;
    
    //按钮尺寸
    CGFloat tabBarButtonW = self.frame.size.width/5;
    CGFloat tabBarbuttonH = self.frame.size.height;
    CGFloat tabBarButtonY = 0;
    
    //设置4个tabbarButton位置
    //不是tabBarButton类型的就排除掉
    for (UIView *tabBarButton in self.subviews) {
        if (![NSStringFromClass(tabBarButton.class)isEqualToString:@"UITabBarButton"])continue;
        
        //计算按钮X的值
        CGFloat tabBarButtonX = index * tabBarButtonW;
        if (index>=2) {//如果前面有2个控件的位置了就加一个腾出为位置给按钮
            tabBarButtonX += tabBarButtonW;
        }
        //设置按钮的frame
        tabBarButton.frame = CGRectMake(tabBarButtonX, tabBarButtonY, tabBarButtonW, tabBarbuttonH);
        //增加所以条
        index++;
    }

    
}
@end

//
//  UITabBarController+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/1/29.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import "UITabBarController+JDLExtension.h"

@implementation UITabBarController (JDLExtension)
#pragma mark 是否隐藏tabBar
- (void)jdl_hideTabBar:(BOOL)hide animated:(BOOL)animated{
    
    if (hide == YES)
    {
        if (self.tabBar.frame.origin.y == self.view.frame.size.height) return;
    }
    else
    {
        if (self.tabBar.frame.origin.y == self.view.frame.size.height - KTabBarHeight) return;
    }
    if (animated == YES)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3f];
        if (hide == YES)
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y + KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
            self.tabBar.alpha =0.0;
        }
        else
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y - KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
            self.tabBar.alpha =1.0;
        }
        [UIView commitAnimations];
    }
    else
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3f];
        if (hide == YES)
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y + KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
        }
        else
        {
            self.tabBar.frame = CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y - KTabBarHeight, self.tabBar.frame.size.width, self.tabBar.frame.size.height);
        }
        [UIView commitAnimations];
    }
}
@end

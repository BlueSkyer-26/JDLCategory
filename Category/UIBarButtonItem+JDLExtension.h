//
//  UIBarButtonItem+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/1/29.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (JDLExtension)
+(UIBarButtonItem *)setBarButtomItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
+(UIBarButtonItem *)setBarButtomItemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;
+(UIBarButtonItem *)backBarButtomItemWithImage:(UIImage *)image highImage:(UIImage *)highImage title:(NSString *)title target:(id)target action:(SEL)action;
+(UIBarButtonItem *)backBarButtomItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
@end

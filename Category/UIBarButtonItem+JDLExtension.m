//
//  UIBarButtonItem+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2018/1/29.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "UIBarButtonItem+JDLExtension.h"

@implementation UIBarButtonItem (JDLExtension)
+(UIBarButtonItem *)setBarButtomItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action{
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIView *contentView =[[UIView alloc] initWithFrame:btn.bounds];
    [contentView addSubview:btn];
    UIBarButtonItem *item =[[UIBarButtonItem alloc] initWithCustomView:contentView];
    return item;
}

+(UIBarButtonItem *)setBarButtomItemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action{
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selImage forState:UIControlStateSelected];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIView *contentView =[[UIView alloc] initWithFrame:btn.bounds];
    [contentView addSubview:btn];
    UIBarButtonItem *item =[[UIBarButtonItem alloc] initWithCustomView:contentView];
    return item;
}

+(UIBarButtonItem *)backBarButtomItemWithImage:(UIImage *)image highImage:(UIImage *)highImage title:(NSString *)title target:(id)target action:(SEL)action{
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateHighlighted];
    
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn sizeToFit];
    btn.contentEdgeInsets =UIEdgeInsetsMake(0, -20, 0, 0);
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *contentView =[[UIView alloc] initWithFrame:btn.bounds];
    [contentView addSubview:btn];
    
    UIBarButtonItem *item =[[UIBarButtonItem alloc] initWithCustomView:contentView];
    return item;
}

+(UIBarButtonItem *)backBarButtomItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action{
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateHighlighted];
    
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *contentView =[[UIView alloc] initWithFrame:btn.bounds];
    [contentView addSubview:btn];
    
    UIBarButtonItem *item =[[UIBarButtonItem alloc] initWithCustomView:contentView];
    return item;
}

@end

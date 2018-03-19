//
//  UIFont+Runtime.m
//  headlineNews
//
//  Created by 胜炫电子 on 2018/3/19.
//  Copyright © 2018年 vcyber. All rights reserved.
//

#import "UIFont+Runtime.h"
#import <objc/message.h>

#define MyUIScreen  375 // UI设计原型图的手机尺寸宽度(6), 6p的--414

@implementation UIFont (Runtime)

+(void)load{
    Method newMethod =class_getClassMethod([self class], @selector(adjustFont:));
    Method methid =class_getClassMethod([self class], @selector(systemFontOfSize:));
    method_exchangeImplementations(newMethod, methid);
}

+ (UIFont *)adjustFont:(CGFloat)fontSize {
    UIFont *newFont = nil;
    
    float fontSizeFloat =fontSize * [UIScreen mainScreen].bounds.size.width/MyUIScreen;
    int fontSizeInt =ceil(fontSizeFloat);
    NSLog(@"=======%f===%d",fontSize * [UIScreen mainScreen].bounds.size.width/MyUIScreen,fontSizeInt);
    newFont = [UIFont adjustFont:fontSizeInt];
    return newFont;
}

@end

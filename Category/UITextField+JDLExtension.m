//
//  UITextField+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/1/29.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import "UITextField+JDLExtension.h"
#import <objc/message.h>

static NSString * const placeholderColorKey = @"placeholderLabel.textColor";

#define objcPlaceholderColorKey @"placeholderColor"
@implementation UITextField (JDLExtension)

+(void)load{
    Method setPlaceHolderText = class_getInstanceMethod(self, @selector(setPlaceHolderText:));
    Method setPlaceholder =class_getInstanceMethod(self, @selector(setPlaceholder:));
    
    method_exchangeImplementations(setPlaceHolderText, setPlaceholder);
}
- (void)setJdl_placeholderColor:(UIColor *)jdl_placeholderColor{
    objc_setAssociatedObject(self, objcPlaceholderColorKey, jdl_placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    UILabel *label =[self valueForKey:@"placeholderLabel"];
    label.textColor =jdl_placeholderColor;
}

- (UIColor *)jdl_placeholderColor{
    return objc_getAssociatedObject(self, objcPlaceholderColorKey);
}

-(void)setPlaceHolderText:(NSString *)placeholder{
    
    [self setPlaceHolderText:placeholder];
//    self.tintColor =[UIColor orangeColor];
    self.jdl_placeholderColor =self.jdl_placeholderColor;
}

//- (void)setPlaceholderColor:(UIColor *)placeholderColor
//{
//    //设置光标颜色
//    self.tintColor =[UIColor orangeColor];
//    // 提前设置占位文字, 目的 : 让它提前创建placeholderLabel
//    NSString *oldPlaceholder = self.placeholder;
//    self.placeholder = @" ";
//    self.placeholder = oldPlaceholder;
//
//    // 恢复到默认的占位文字颜色
//    if (placeholderColor == nil) {
//        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
//    }
//
//    // 设置占位文字颜色
//    [self setValue:placeholderColor forKeyPath:placeholderColorKey];
//}

//- (UIColor *)placeholderColor
//{
//    return [self valueForKeyPath:placeholderColorKey];
//}
@end

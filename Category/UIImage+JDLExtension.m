//
//  UIImage+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/1/29.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import "UIImage+JDLExtension.h"

@implementation UIImage (JDLExtension)
#pragma mark ------ 返回原始图片
+(UIImage *)jdl_imageNameWithOriginMode:(NSString *)imageName{
    UIImage *image =[UIImage imageNamed:imageName];
    image =[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
#pragma mark ------ 返回圆形图片 对象方法
- (instancetype)jdl_circleImage
{
    // 开启图形上下文
    UIGraphicsBeginImageContext(self.size);
    // 上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    // 裁剪
    CGContextClip(ctx);
    // 绘制图片
    [self drawInRect:rect];
    // 获得图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 关闭图形上下文
    UIGraphicsEndImageContext();
    return image;
}
#pragma mark ------ 返回圆形图片 类方法
+ (instancetype)jdl_circleImage:(NSString *)name
{
    return [[self imageNamed:name] jdl_circleImage];
}
@end

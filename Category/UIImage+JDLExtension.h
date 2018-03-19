//
//  UIImage+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/1/29.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JDLExtension)

/** 返回原始图片 **/
+(UIImage *)jdl_imageNameWithOriginMode:(NSString *)imageName;
/** 返回圆形图片 **/
- (instancetype)jdl_circleImage;
/** 返回圆形图片 **/
+ (instancetype)jdl_circleImage:(NSString *)name;
@end

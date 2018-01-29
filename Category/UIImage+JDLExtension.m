//
//  UIImage+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2018/1/29.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "UIImage+JDLExtension.h"

@implementation UIImage (JDLExtension)
+(UIImage *)imageNameWithOriginMode:(NSString *)imageName{
    UIImage *image =[UIImage imageNamed:imageName];
    image =[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
@end

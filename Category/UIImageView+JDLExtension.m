//
//  UIImageView+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/2/9.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import "UIImageView+JDLExtension.h"
#import "UIImage+JDLExtension.h"

#import "UIImageView+WebCache.h"

@implementation UIImageView (JDLExtension)

#pragma mark ------ 网络获取图片 剪切-->圆形
- (void)jdl_setCircleHeader:(NSString *)url
{
    UIImage *placeholder = [UIImage jdl_circleImage:@"defaultUserIcon"];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (image == nil) return;
        
        self.image = [image jdl_circleImage];
    }];
}
#pragma mark ------ 网络获取图片 剪切-->方形
- (void)jdl_setRectHeader:(NSString *)url
{
    UIImage *placeholder = [UIImage imageNamed:@"defaultUserIcon"];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder];
}
@end

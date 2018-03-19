//
//  UIImageView+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/2/9.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (JDLExtension)
#pragma mark ------ 网络获取图片 剪切-->圆形 (前提：1,导入SDWebImage 2,UIImage+JDLExtension配合使用)
- (void)jdl_setCircleHeader:(NSString *)url;
#pragma mark ------ 网络获取图片 剪切-->方形
- (void)jdl_setRectHeader:(NSString *)url;
@end

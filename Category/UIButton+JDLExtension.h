//
//  UIButton+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/1/29.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^countdownCompletionBlock)(void);
@interface UIButton (JDLExtension)
#pragma mark ------ 倒计时 -------
- (void)jdl_countdownWithSecond:(NSInteger)second completion:(countdownCompletionBlock)block;
@end

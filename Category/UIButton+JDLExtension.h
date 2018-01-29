//
//  UIButton+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2018/1/29.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^countdownCompletionBlock)(void);
@interface UIButton (JDLExtension)
#pragma mark ------ 倒计时 -------
- (void)JDL_countdownWithSecond:(NSInteger)second completion:(countdownCompletionBlock)block;
@end

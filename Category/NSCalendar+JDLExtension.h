//
//  NSCalendar+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/2/9.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSCalendar (JDLExtension)
/** 根据不同系统初始化日历 **/
+ (instancetype)jdl_calendar;
@end

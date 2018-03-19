//
//  NSCalendar+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/2/9.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import "NSCalendar+JDLExtension.h"

@implementation NSCalendar (JDLExtension)
#pragma mark ------ 初始化日历
+ (instancetype)jdl_calendar
{
    if ([NSCalendar respondsToSelector:@selector(calendarWithIdentifier:)]) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    } else {
        return [NSCalendar currentCalendar];
    }
}
@end

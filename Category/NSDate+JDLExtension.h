//
//  NSDate+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/2/9.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (JDLExtension)
/** 是否为今年 **/
- (BOOL)jdl_isThisYear;
/** 是否为今天 **/
- (BOOL)jdl_isToday;
/** 是否为昨天 **/
- (BOOL)jdl_isYesterday;
/** 是否为明天 **/
- (BOOL)jdl_isTomorrow;
@end

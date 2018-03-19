//
//  JDLConst.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2017/2/1.
//  Copyright © 2017年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 通用的间距值 */
CGFloat const JDLMargin = 10;
/** 通用的小间距值 */
CGFloat const JDLSmallMargin = JDLMargin * 0.5;

/** 公共的URL */
NSString * const JDLCommonURL = @"http://api.budejie.com/api/api_open.php";

/** JDLUser - sex - male */
NSString * const JDLUserSexMale = @"m";

/** JDLUser - sex - female */
NSString * const JDLUserSexFemale = @"f";

/*** 通知 ***/
/** TabBar按钮被重复点击的通知 */
NSString * const JDLTabBarButtonDidRepeatClickNotification = @"JDLTabBarButtonDidRepeatClickNotification";
/** 标题按钮被重复点击的通知 */
NSString * const JDLTitleButtonDidRepeatClickNotification = @"JDLTitleButtonDidRepeatClickNotification";

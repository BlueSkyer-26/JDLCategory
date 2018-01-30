//
//  NSString+JDLExtension.h
//  JDLCategory
//
//  Created by 胜炫电子 on 2018/1/30.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JDLExtension)
/** 获取文件或文件夹大小 **/
- (unsigned long long)fileSize;
/** 文件或文件夹大小 ---> B KB MB GB (直接传文件路径  计算大小+转换)**/
- (NSString *)fileSizeChangeToSize;

@end

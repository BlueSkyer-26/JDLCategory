//
//  NSString+JDLExtension.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2018/1/30.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "NSString+JDLExtension.h"

@implementation NSString (JDLExtension)

#pragma mark ------ 获取文件或文件夹大小
- (unsigned long long)fileSize
{
    // 总大小
    unsigned long long size = 0;
    // 文件管理者
    NSFileManager *mgr = [NSFileManager defaultManager];
    // 是否为文件夹
    BOOL isDirectory = NO;
    // 路径是否存在
    BOOL exists = [mgr fileExistsAtPath:self isDirectory:&isDirectory];
    if (!exists) return size;
    if (isDirectory) { // 文件夹
        // 获得文件夹的大小  == 获得文件夹中所有文件的总大小
        NSDirectoryEnumerator *enumerator = [mgr enumeratorAtPath:self];
        for (NSString *subpath in enumerator) {
            // 全路径
            NSString *fullSubpath = [self stringByAppendingPathComponent:subpath];
            // 累加文件大小
            size += [mgr attributesOfItemAtPath:fullSubpath error:nil].fileSize;
        }
    } else { // 文件
        size = [mgr attributesOfItemAtPath:self error:nil].fileSize;
    }
    return size;
}
#pragma mark ------ 文件或文件夹大小 ---> B KB MB GB (直接传文件路径  计算大小+转换)
- (NSString *)fileSizeChangeToSize{
    unsigned long long size =[self fileSize];
    NSString *sizeStr =nil;
    if(size >pow(10, 9)){                   //GB
        sizeStr =[NSString stringWithFormat:@"%.2fGB",size/pow(10, 9)];
    }else if (size >pow(10, 6)){            //MB
        sizeStr =[NSString stringWithFormat:@"%.2fMB",size/pow(10, 6)];
    }else if (size >pow(10, 3)){            //KB
        sizeStr =[NSString stringWithFormat:@"%.2fKB",size/pow(10, 3)];
    }else{                                  //B
        sizeStr =[NSString stringWithFormat:@"%.2lluB",size];
    }
    return sizeStr;
}

@end

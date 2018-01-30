//
//  ViewController.m
//  JDLCategory
//
//  Created by 胜炫电子 on 2018/1/29.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITextField *textField =[[UITextField alloc] initWithFrame:CGRectMake(10, 20, 100, 40)];
    
    textField.placeholder =@"撒挖地阿卡";
    textField.placeholderColor =[UIColor orangeColor];
    
    [self.view addSubview:textField];
    
    // 获得缓存文件夹路径
//    NSString *cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
//    unsigned long long  dirpath = [cachesPath stringByAppendingPathComponent:@"default"].fileSize;
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSString * sizePath =@"/Users/shengxuandianzi/Desktop/SunBoyDocument".fileSizeChangeToSize;
        NSLog(@"==== %@",sizePath);
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
    });
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

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
    textField.placeholderColor =[UIColor orangeColor];
    textField.placeholder =@"撒挖地阿卡";
    [self.view addSubview:textField];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

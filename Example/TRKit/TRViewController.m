//
//  TRViewController.m
//  TRKit
//
//  Created by xiaoerlong on 08/06/2018.
//  Copyright (c) 2018 xiaoerlong. All rights reserved.
//

#import "TRViewController.h"
#import "NSObject+TRVersion.h"
#import "UIButton+Countdown.h"

@interface TRViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [self version]);
    [self.btn countdownWithTime:60 normalTitle:@"获取验证码"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

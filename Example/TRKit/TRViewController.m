//
//  TRViewController.m
//  TRKit
//
//  Created by xiaoerlong on 08/06/2018.
//  Copyright (c) 2018 xiaoerlong. All rights reserved.
//

#import "TRViewController.h"
#import "NSObject+TRVersion.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [self version]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

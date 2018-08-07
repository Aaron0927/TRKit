//
//  UIViewController+TRAdd.m
//  LemonPatriarch
//
//  Created by 肖二龙 on 2018/7/25.
//  Copyright © 2018年 boyue. All rights reserved.
//

#import "UIViewController+TRAdd.h"

@implementation UIViewController (TRAdd)

#pragma mark -
#pragma mark Alert
/// 弹出确认框
- (void)alertConfirmWithMessage:(NSString *)message action:(handler)action {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:action]];
    [self presentViewController:alert animated:YES completion:NULL];
}

/// 弹出二次确认提示
- (void)alertReconfirmationWithMessage:(NSString *)message action:(handler)action {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:NULL]];
    [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:action]];
    [self presentViewController:alert animated:YES completion:NULL];
}

@end

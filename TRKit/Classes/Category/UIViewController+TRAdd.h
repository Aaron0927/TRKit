//
//  UIViewController+TRAdd.h
//  LemonPatriarch
//
//  Created by 肖二龙 on 2018/7/25.
//  Copyright © 2018年 boyue. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^__nullable handler)(UIAlertAction * _Nonnull action);

@interface UIViewController (TRAdd)
#pragma mark -
#pragma mark Alert
/// 弹出确认框
- (void)alertConfirmWithMessage:(NSString *)message action:(handler)action;

/// 弹出二次确认提示
- (void)alertReconfirmationWithMessage:(NSString *)message action:(handler)action;

@end

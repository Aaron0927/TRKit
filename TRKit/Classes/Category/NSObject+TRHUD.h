//
//  NSObject+TRHUD.h
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/10.
//

#import <Foundation/Foundation.h>

/// HUD二次封装 目前基于MBProgressHUD
@interface NSObject (TRHUD)
- (void)showErrorWithText:(nonnull NSString *)text;

- (void)showSuccessWithText:(nonnull NSString *)text;

- (void)showWarningWithText:(nonnull NSString *)text;

- (void)showTipWithText:(NSString *)text inView:(UIView *)view afterDelay:(NSTimeInterval)delay;
- (void)showTipWithText:(NSString *)text afterDelay:(NSTimeInterval)delay;
@end

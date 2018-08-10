//
//  MBProgressHUD+Show.h
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/10.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (Show)
+ (void)showErrorWithText:(NSString *)text;
+ (void)showSuccessWithText:(NSString *)text;

+(void)showWarmingWithText:(NSString *)text;

+ (void)showTipWithText:(NSString *)text inView:(UIView *)view afterDelay:(NSTimeInterval)delay;
+ (void)showTipWithText:(NSString *)text afterDelay:(NSTimeInterval)delay;
@end

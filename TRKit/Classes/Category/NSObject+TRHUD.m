//
//  NSObject+TRHUD.m
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/10.
//

#import "NSObject+TRHUD.h"
#import "MBProgressHUD.H"
#import "YYKit.h"

@implementation NSObject (TRHUD)
- (void)showErrorWithText:(nonnull NSString *)text {
    [self showText:text name:@"error@2x.png" color:UIColorHex(2F2F2F) color:UIColorHex(DBDBDB)];
}

- (void)showSuccessWithText:(nonnull NSString *)text {
    [self showText:text name:@"success@2x.png" color:UIColorHex(2F2F2F) color:UIColorHex(DBDBDB)];
}

- (void)showWarningWithText:(nonnull NSString *)text {
    [self showText:text name:nil color:[UIColor whiteColor] color:[UIColor darkGrayColor]];
}

- (void)showTipWithText:(NSString *)text inView:(UIView *)view afterDelay:(NSTimeInterval)delay {
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:view];
    hud.mode = MBProgressHUDModeText;
    [view addSubview:hud];
    hud.bezelView.backgroundColor = UIColorHex(#000000);
    hud.bezelView.layer.cornerRadius = 9;
    hud.label.text=text;
    hud.label.font=[UIFont systemFontOfSize:17];
    hud.label.textColor = UIColorHex(#FFFFFF);
    hud.removeFromSuperViewOnHide = YES;
    [hud showAnimated:YES];
    [hud hideAnimated:YES afterDelay:delay];
}

- (void)showTipWithText:(NSString *)text afterDelay:(NSTimeInterval)delay {
    UIView  *contentView = (UIView*)[UIApplication sharedApplication].delegate.window;
    [self showTipWithText:text inView:contentView afterDelay:delay];
}

- (void)showText:(NSString *)text name:(NSString *)imagename  color:(UIColor*)textcolor color:(UIColor*)backgroundColor
{
    // 显示加载失败
    MBProgressHUD *hud =[MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    // 显示一张图片(mode必须写在customView设置之前)
    hud.mode = MBProgressHUDModeCustomView;
    //弹出框的背景色设置
    hud.bezelView.backgroundColor = backgroundColor;
    // 设置一张图片
    imagename = [NSString stringWithFormat:@"MBProgressHUD.bundle/%@", imagename];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imagename]];
    hud.label.text = text;
    hud.label.font = [UIFont systemFontOfSize:16];
    hud.label.textColor = textcolor;
    // 隐藏的时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒后自动隐藏
    [hud hideAnimated:YES afterDelay:1.5];
}
@end

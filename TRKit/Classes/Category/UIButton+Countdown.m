//
//  UIButton+Countdown.m
//  Amoour
//
//  Created by Tronsis－mac on 2018/4/2.
//  Copyright © 2018年 tronsis. All rights reserved.
//

#import "UIButton+Countdown.h"

@implementation UIButton (Countdown)

@dynamic isTiming;

- (void)countdownWithTime:(NSTimeInterval)timeInterval normalTitle:(NSString *)title {
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0); //每秒执行
    
    NSDate *endTime = [NSDate dateWithTimeIntervalSinceNow:timeInterval]; // 倒计时截止时间
    
    dispatch_source_set_event_handler(_timer, ^{
        NSTimeInterval interval = [endTime timeIntervalSinceNow];
        if (interval > 0) {
            NSString *strTime = [NSString stringWithFormat:@"%.2ld", (NSInteger)interval];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.titleLabel.text = [NSString stringWithFormat:@"%@s后重试",strTime];
                [self setTitle:[NSString stringWithFormat:@"%@s后重试",strTime] forState:UIControlStateNormal];
                
                self.enabled = NO;
                self.isTiming = YES;
            });
        } else {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示
                [self setTitle:title forState:UIControlStateNormal];
                self.enabled = YES;
                self.isTiming = NO;
            });
        }
    });
    dispatch_resume(_timer);
}

- (void)setIsTiming:(BOOL)isTiming {
    objc_setAssociatedObject(self, @"isTiming", @(isTiming), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isTiming {
    return [objc_getAssociatedObject(self, @"isTiming") boolValue];
}
@end

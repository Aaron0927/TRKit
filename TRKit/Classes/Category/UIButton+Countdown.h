//
//  UIButton+Countdown.h
//  Amoour
//
//  Created by Tronsis－mac on 2018/4/2.
//  Copyright © 2018年 tronsis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Countdown)
- (void)countdownWithTime:(NSTimeInterval)timeInterval normalTitle:(NSString *)title;
@property (nonatomic, assign) BOOL isTiming; // 是否在倒计时中
@end

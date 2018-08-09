//
//  UIScrollView+TRRefresh.h
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/9.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (TRRefresh)
/// 设置默认的下拉刷新
- (void)setNormalHeaderWithTarget:(id)target action:(SEL)action lastUpdateTimeKey:(nullable NSString *)lastUpdateTimeKey;

/// 设置带动图的下拉刷新
- (void)setGifHeaderWithTarget:(id)target action:(SEL)action lastUpdateTimeKey:(nullable NSString *)lastUpdateTimeKey;

/// 设置自定义的下拉刷新
- (void)setCustomHeaderWithTarget:(id)target action:(SEL)action;

/// 设置默认的上拉刷新
- (void)setNormalFooterWithTarget:(id)target action:(SEL)action;

/// 设置带动图的上拉刷新
- (void)setGifFooterWithTarget:(id)target action:(SEL)action;

/// 设置自定义的上拉刷新
- (void)setCustomFooterWithTarget:(id)target action:(SEL)action;
@end

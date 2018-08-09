//
//  UIScrollView+TRRefresh.m
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/9.
//

#import "UIScrollView+TRRefresh.h"
#import <MJRefresh/MJRefresh.h>

@implementation UIScrollView (TRRefresh)
/// 设置默认的下拉刷新
- (void)setNormalHeaderWithTarget:(id)target action:(SEL)action lastUpdateTimeKey:(nullable NSString *)lastUpdateTimeKey {
    MJRefreshHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    if (lastUpdateTimeKey) {
        [header setLastUpdatedTimeKey:lastUpdateTimeKey];
    }
    self.mj_header = header;
}

/// 设置带动图的下拉刷新
- (void)setGifHeaderWithTarget:(id)target action:(SEL)action lastUpdateTimeKey:(nullable NSString *)lastUpdateTimeKey {
    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:target refreshingAction:action];
    if (lastUpdateTimeKey) {
        [header setLastUpdatedTimeKey:lastUpdateTimeKey];
    }
    //    [header setImages:@[] forState:MJRefreshStateRefreshing];
    self.mj_header = header;
}

/// 设置自定义的下拉刷新
- (void)setCustomHeaderWithTarget:(id)target action:(SEL)action {
    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:target refreshingAction:action];
    [header.lastUpdatedTimeLabel setHidden:YES];
    [header.stateLabel setHidden:YES];
    self.mj_header = header;
}

/// 设置默认的上拉刷新
- (void)setNormalFooterWithTarget:(id)target action:(SEL)action  {
    MJRefreshFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
    self.mj_footer = footer;
}

/// 设置带动图的上拉刷新
- (void)setGifFooterWithTarget:(id)target action:(SEL)action {
    MJRefreshFooter *footer = [MJRefreshAutoGifFooter footerWithRefreshingTarget:target refreshingAction:action];
    self.mj_footer = footer;
}

/// 设置自定义的上拉刷新
- (void)setCustomFooterWithTarget:(id)target action:(SEL)action {
    MJRefreshAutoGifFooter *footer = [MJRefreshAutoGifFooter footerWithRefreshingTarget:target refreshingAction:action];
    footer.refreshingTitleHidden = YES;
    self.mj_footer = footer;
}
@end

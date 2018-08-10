//
//  TREmptyViewManager.h
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/10.
//

#import <Foundation/Foundation.h>
#import "DZNEmptyDataSet/UIScrollView+EmptyDataSet.h"

@interface TREmptyViewManager : NSObject <DZNEmptyDataSetSource, DZNEmptyDataSetDelegate>

+ (instancetype)manager;

@property (nonatomic, strong) UIScrollView *targetView;

@property (nonatomic, assign) BOOL isNoNetWork;
@property (nonatomic, strong) NSString *NodataDetail;
@property (nonatomic, assign) id target;
@property (nonatomic, assign) SEL action;

/// 网络错误
- (void)setNetworkError;

/// 无数据
- (void)setNoDataError;

@end

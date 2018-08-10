//
//  TREmptyViewManager.m
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/10.
//

#import "TREmptyViewManager.h"
#import "NSAttributedString+YYText.h"

@implementation TREmptyViewManager
+ (instancetype)manager {
    TREmptyViewManager *manager = [[TREmptyViewManager alloc] init];
    return manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.isNoNetWork = YES;
        self.NodataDetail = @"网络不给力";
    }
    return self;
}

- (void)dealloc {
    _targetView.emptyDataSetSource = nil;
    _targetView.emptyDataSetDelegate = nil;
}

- (void)setTargetView:(UIScrollView *)targetView {
    _targetView = targetView;
    targetView.emptyDataSetSource = self;
    targetView.emptyDataSetDelegate = self;
}

#pragma 没有数据时实现的代理协议方法
//无数据或者无网络的图片
- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    UIImage *image;
    if (self.isNoNetWork) {
        image =  [UIImage imageNamed:@"wuwangluo"];
    }
    else{
        image =  [UIImage imageNamed:@"wushuju"];
    }
    return image;
}

//无数据或者无网络的详情文字
- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self.NodataDetail];
    attrStr.font = [UIFont systemFontOfSize:15];
    attrStr.color = [UIColor lightGrayColor];
    attrStr.alignment = NSTextAlignmentCenter;
    attrStr.lineBreakMode = NSLineBreakByWordWrapping;
    return attrStr;
}

-(UIImage *)buttonImageForEmptyDataSet:(UIScrollView*)scrollView forState:(UIControlState)state {
    if (self.isNoNetWork) {
        return [UIImage imageNamed:@"reloadbtn"];
    }
    return nil;
}

//空白数据集 按钮被点击时 触发该方法
- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
    [_target performSelector:_action withObject:nil afterDelay:0];
}

//设置所有组件彼此之间的上下间距
- (CGFloat)spaceHeightForEmptyDataSet:(UIScrollView *)scrollView {
    return 20;
}

- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    return YES;
}

#pragma mark -
#pragma mark Private
/// 网络错误
- (void)setNetworkError {
    self.isNoNetWork = YES;
    self.NodataDetail = @"网络不给力";
    [self.targetView reloadEmptyDataSet];
}

/// 无数据
- (void)setNoDataError {
    self.isNoNetWork = NO;
    self.NodataDetail = @"暂无数据";
    [self.targetView reloadEmptyDataSet];
}
@end

//
//  NSObject+TRAuthorization.h
//  ToolKit
//
//  Created by Tronsis－mac on 2018/4/18.
//  Copyright © 2018年 Kim－pc. All rights reserved.
//

// 获取权限分类
#import <Foundation/Foundation.h>

@interface NSObject (TRAuthorization)
- (BOOL)hasDevice;
/// 相机权限
- (void)captureAuthWithCompletionHandler:(void (^)(BOOL granted))handler;
@end

//
//  NSObject+TRVersion.h
//  ToolKit
//
//  Created by Tronsis－mac on 2018/4/19.
//  Copyright © 2018年 Kim－pc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (TRVersion)
- (NSString *)version; // 版本号
- (NSString *)build; // 编译号
@end

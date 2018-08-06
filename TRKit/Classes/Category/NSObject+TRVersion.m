//
//  NSObject+TRVersion.m
//  ToolKit
//
//  Created by Tronsis－mac on 2018/4/19.
//  Copyright © 2018年 Kim－pc. All rights reserved.
//

#import "NSObject+TRVersion.h"

@implementation NSObject (TRVersion)
- (NSString *)version {
    return [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleShortVersionString"];
}

- (NSString *)build {
    return [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleVersion"];
}
@end

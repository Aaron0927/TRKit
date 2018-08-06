//
//  UIDevice+TRInfo.m
//  ToolKit
//
//  Created by Tronsis－mac on 2018/4/19.
//  Copyright © 2018年 Kim－pc. All rights reserved.
//

#import "UIDevice+TRInfo.h"

@implementation UIDevice (TRInfo)
+ (CGFloat)battery {
    return [UIDevice currentDevice].batteryLevel;
}
@end

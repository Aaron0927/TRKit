//
//  NSObject+TRAuthorization.m
//  ToolKit
//
//  Created by Tronsis－mac on 2018/4/18.
//  Copyright © 2018年 Kim－pc. All rights reserved.
//

#import "NSObject+TRAuthorization.h"

#import <AVFoundation/AVFoundation.h>

@implementation NSObject (TRAuthorization)
- (BOOL)hasDevice {
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    return device != nil;
}
/// 相机权限
- (void)captureAuthWithCompletionHandler:(void (^)(BOOL granted))handler {
    if ([self hasDevice]) {
        AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        switch (status) {
            case AVAuthorizationStatusDenied:
            case AVAuthorizationStatusRestricted:
                handler(NO);
                break;
            case AVAuthorizationStatusAuthorized:
                handler(YES);
                break;
            case AVAuthorizationStatusNotDetermined: {
                [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                    handler(granted);
                }];
                break;
            }
        }
    } else {
        NSLog(@"no device");
    }
}
@end

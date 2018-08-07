//
//  TRHTTPSessionManager.m
//  Pods-TRHTTPTool_Example
//
//  Created by 肖二龙 on 2018/8/7.
//

#import "TRHTTPSessionManager.h"

@implementation TRHTTPSessionManager
+ (instancetype)manager {
    static TRHTTPSessionManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[TRHTTPSessionManager alloc] init];
    });
    return manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
        self.requestSerializer.timeoutInterval = 30;
        
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.responseSerializer.acceptableContentTypes =  [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    }
    return self;
}
@end

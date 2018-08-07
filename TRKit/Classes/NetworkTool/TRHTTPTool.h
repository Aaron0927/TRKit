//
//  TRHTTPTool.h
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/7.
//

#import <Foundation/Foundation.h>

typedef void(^successHandle)(id result);
typedef void(^failureHandle)(NSError *error);

@interface TRHTTPTool : NSObject
/// GET请求 返回原始数据
+ (NSURLSessionDataTask *)GET:(NSString *)url
                            parameters:(nullable id)parameters
                               success:(successHandle)completionHandle
                               failure:(failureHandle)errorHandle;

/// POST请求 返回原始数据
+ (NSURLSessionDataTask *)POST:(NSString *)url
                             parameters:(nullable id)parameters
                                success:(successHandle)completionHandle
                                failure:(failureHandle)errorHandle;

/// POST请求 上传文件
+ (NSURLSessionDataTask *)POST:(NSString *)url
                    parameters:(nullable id)parameters
                         datas:(NSArray<NSData *> *)datas
                      fileName:(NSString *)fileName
                       success:(successHandle)success
                       failure:(failureHandle)failure;

/// DELETE请求
+ (NSURLSessionDataTask *)DELETE:(NSString *)url
                      parameters:(nullable id)parameters
                         success:(successHandle)success
                         failure:(failureHandle)failure;

/// PATCH请求
+ (NSURLSessionDataTask *)PATCH:(NSString *)url
                     parameters:(nullable id)parameters
                        success:(successHandle)success
                        failure:(failureHandle)failure;

/// PUT请求
+ (NSURLSessionDataTask *)PUT:(NSString *)url
                   parameters:(nullable id)parameters
                      success:(successHandle)success
                      failure:(failureHandle)failure;

/// DOWN请求
+ (NSURLSessionDownloadTask *)DOWN:(NSString *)url
                          progress:(void (^)(NSProgress *progress))progress
                           success:(successHandle)success
                           failure:(failureHandle)failure;
@end

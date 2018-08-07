//
//  TRHTTPTool.m
//  AFNetworking
//
//  Created by 肖二龙 on 2018/8/7.
//

#import "TRHTTPTool.h"
#import "TRHTTPSessionManager.h"

@implementation TRHTTPTool

/// GET请求 返回原始数据
+ (NSURLSessionDataTask *)GET:(NSString *)url
                            parameters:(nullable id)parameters
                               success:(successHandle)completionHandle
                               failure:(failureHandle)errorHandle {
    return [[TRHTTPSessionManager manager] GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorHandle(error);
    }];
}

/// POST请求 返回原始数据
+ (NSURLSessionDataTask *)POST:(NSString *)url
                             parameters:(nullable id)parameters
                                success:(successHandle)completionHandle
                                failure:(failureHandle)errorHandle {
    return [[TRHTTPSessionManager manager] POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorHandle(error);
    }];
}

/// POST请求 上传文件
+ (NSURLSessionDataTask *)POST:(NSString *)url
                    parameters:(nullable id)parameters
                         datas:(NSArray<NSData *> *)datas
                      fileName:(NSString *)fileName
                       success:(successHandle)success
                       failure:(failureHandle)failure {
    return [[TRHTTPSessionManager manager] POST:url parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (NSData *data in datas) {
            [formData appendPartWithFileData:data name:@"file" fileName:[NSString stringWithFormat:@"%@.jpeg", fileName] mimeType:@"image/jpeg"];
        }
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/// DELETE请求
+ (NSURLSessionDataTask *)DELETE:(NSString *)url
                      parameters:(nullable id)parameters
                         success:(successHandle)success
                         failure:(failureHandle)failure {
    return [[TRHTTPSessionManager manager] DELETE:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/// PATCH请求
+ (NSURLSessionDataTask *)PATCH:(NSString *)url
                     parameters:(nullable id)parameters
                        success:(successHandle)success
                        failure:(failureHandle)failure {
    return [[TRHTTPSessionManager manager] PATCH:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/// PUT请求
+ (NSURLSessionDataTask *)PUT:(NSString *)url
                   parameters:(nullable id)parameters
                      success:(successHandle)success
                      failure:(failureHandle)failure {
    return [[TRHTTPSessionManager manager] PUT:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/// DOWN请求
+ (NSURLSessionDownloadTask *)DOWN:(NSString *)url
                          progress:(void (^)(NSProgress *progress))progress
                           success:(successHandle)success
                           failure:(failureHandle)failure {
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    return [[TRHTTPSessionManager manager] downloadTaskWithRequest:request progress:progress destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        return [NSURL URLWithString:NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject];
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        if (error) {
            failure(error);
        } else {
            success(response);
        }
    }];
}

@end

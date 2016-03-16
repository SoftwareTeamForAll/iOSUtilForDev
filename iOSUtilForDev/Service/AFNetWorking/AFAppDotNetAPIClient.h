//
//  NetWorkingHttpAPI.h
//  iOSUtilForDev
//
//  Created by caiyidong on 3/9/16.
//  Copyright © 2016 caiyidong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFHTTPRequestOperationManager.h>

@interface AFAppDotNetAPIClient : AFHTTPRequestOperationManager

/**
 利用dispatch_once创建AFAppDotNetAPIClient的单例
 
 @return 返回AFAppDotNetAPIClient
 */
+ (instancetype)sharedClient;

//+ (instancetype)sharedClientTest;

@end

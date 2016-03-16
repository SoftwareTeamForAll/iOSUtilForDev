//
//  NetWorkingHttpAPI.h
//  iOSUtilForDev
//
//  Created by caiyidong on 3/9/16.
//  Copyright © 2016 caiyidong. All rights reserved.
//

#import "AFAppDotNetAPIClient.h"

@implementation AFAppDotNetAPIClient

#pragma mark -
#pragma mark Custom Public Function

+ (instancetype)sharedClient {
	
	static AFAppDotNetAPIClient *_sharedClient = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		
		_sharedClient = [[AFAppDotNetAPIClient alloc] initWithBaseURL:[NSURL URLWithString:@"http://example.com"]];
		//设置请求与响应都以JSON格式处理
		//[_sharedClient setRequestSerializer:[AFJSONRequestSerializer serializer]];
		[_sharedClient setResponseSerializer:[AFJSONResponseSerializer serializer]];
	});
	
	return _sharedClient;
}



#pragma mark -
#pragma mark Override Superclass AFHTTPRequestOperationManager Point

- (AFHTTPRequestOperation *)POST:(NSString *)URLString
					  parameters:(NSDictionary *)parameters
						 success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
						 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
	
	//覆盖父类方法，实现自定义的加密处理
	NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:@"POST" URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString] parameters:parameters error:nil];
	[request setTimeoutInterval:15.];

	AFHTTPRequestOperation *operation = [self HTTPRequestOperationWithRequest:request success:success failure:failure];
	[self.operationQueue addOperation:operation];
	
	return operation;
}



@end

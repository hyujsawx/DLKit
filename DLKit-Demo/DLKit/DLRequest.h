//
//  DLRequest.h
//  DLKit
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2012年 DoubleL-Coding. All rights reserved.
//

#import "DLFuncHeader.h"

@interface DLRequest : NSObject

// todo...
+ (void)requestWithDic:(NSDictionary *)dic addUrl:(NSString *)url success:(blockWithIdObject)success failure:(blockWithIdObject)failure;

@end

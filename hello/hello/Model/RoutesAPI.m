//
//  RoutesAPI.m
//  hello
//
//  Created by Slava Palaumov on 13.03.14.
//  Copyright (c) 2014 Palaum. All rights reserved.
//

#import "RoutesAPI.h"
#import <AFNetworking.h>

@implementation RoutesAPI

+(instancetype)sharedClient {
    static RoutesAPI *_sharedClient = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{ _sharedClient = [[self alloc] init]; });
    return _sharedClient;
}

-(void)getRoutes:(void (^)(NSArray *, NSError *))block {
    
}

@end

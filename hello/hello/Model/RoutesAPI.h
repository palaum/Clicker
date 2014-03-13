//
//  RoutesAPI.h
//  hello
//
//  Created by Slava Palaumov on 13.03.14.
//  Copyright (c) 2014 Palaum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RoutesAPI : NSObject

+(instancetype)sharedClient;

-(void)getRoutes:(void (^)(NSArray *routes, NSError *error))block;

@end

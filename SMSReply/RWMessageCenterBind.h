//
//  RWMessageCenterBind.h
//  SMSReply
//
//  Created by Ryan Wang on 15/6/19.
//  Copyright (c) 2015年 Ryan Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTMessageCenter.h"

@interface RWMessageCenterBind : NSObject

+ (instancetype)sharedBind;

- (void)test;

- (BOOL)sendMessage:(NSString *)message receiver:(NSString *)receiver;

@end

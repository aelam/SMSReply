//
//  RWMessageCenterBind.m
//  SMSReply
//
//  Created by Ryan Wang on 15/6/19.
//  Copyright (c) 2015年 Ryan Wang. All rights reserved.
//

#import "RWMessageCenterBind.h"

@implementation RWMessageCenterBind

+ (instancetype)sharedBind {
    static RWMessageCenterBind *_bind = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bind = [RWMessageCenterBind new];
    });
    return _bind;
}

- (void)test {
}

- (BOOL)sendMessage:(NSString *)message receiver:(NSString *)receiver {
    return [[CTMessageCenter sharedMessageCenter] sendSMSWithText:message serviceCenter:nil toAddress:receiver];
}

@end

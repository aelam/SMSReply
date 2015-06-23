//
//  main.m
//  SMSReply
//
//  Created by Ryan Wang on 15/6/19.
//  Copyright (c) 2015年 Ryan Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#include <notify.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>




//typedef struct __CTSMSMessage CTSMSMessage;
//NSString *CTSMSMessageCopyAddress(void *, CTSMSMessage *);
//NSString *CTSMSMessageCopyText(void *, CTSMSMessage *);
//
//id CTTelephonyCenterGetDefault(void);
//void CTTelephonyCenterAddObserver(id,id,CFNotificationCallback,NSString*,void*,int);
//
//
//void dolog(id formatstring,...)
//{
//    va_list arglist;
//    if (formatstring)
//    {
//        va_start(arglist, formatstring);
//        id outstring = [[NSString alloc] initWithFormat:formatstring arguments:arglist];
//        printf("%s\n", [outstring UTF8String]);
//        va_end(arglist);
//    }
//}
//
//static void callback(CFNotificationCenterRef center,
//                     void *observer, CFStringRef name,
//                     const void *object, CFDictionaryRef userInfo)
//{
//    
//    // printf("NOTIFICATION: %s\n", [name UTF8String]);
//    if (!userInfo) return;
//    
//    NSDictionary *info = (__bridge NSDictionary*)userInfo;
//    int dcount = CFDictionaryGetCount(userInfo);
//    id keys = [info allKeys];
//    int i;
//    for (i = 0; i < dcount; i++)
//    {
//        id key = [keys objectAtIndex:i];
//        dolog(@"  %@: %@", key, [info objectForKey:key]);
//    }
//    
//    
//    if ([[info allKeys]
//         containsObject:@"kCTSMSMessage"]) // SMS Message
//    {
//        CTSMSMessage *message = (__bridge CTSMSMessage *)
//        [(NSDictionary *)info objectForKey:@"kCTSMSMessage"];
//        NSString *address = CTSMSMessageCopyAddress(NULL, message);
//        NSString *text = CTSMSMessageCopyText(NULL, message);
//        NSArray *lines = [text componentsSeparatedByString:@"\n"];
//        
//        printf("  %s %d\n", [address cString], [lines count]);
//        printf("  %s\n", [text cString]);
//        fflush(stdout);
//    }
//    
//    
//    return ;
//}
//
//static void signalHandler(int sigraised)
//{
//    printf("\nInterrupted.\n");
//    exit(0);
//}
//
//void testSMS() {
//    
//    
//    // Initialize listener by adding CT Center observer implicit
//    id ct = CTTelephonyCenterGetDefault();
//    CTTelephonyCenterAddObserver( ct, NULL, callback,NULL,NULL,
//                                 CFNotificationSuspensionBehaviorHold);
//    
//    // Handle Interrupts
//    sig_t oldHandler = signal(SIGINT, signalHandler);
//    if (oldHandler == SIG_ERR)
//    {
//        printf("Could not establish new signal handler");
//        exit(1);
//    }
//    
//    // Run loop lets me catch notifications
//    printf("Starting run loop and watching for notification.\n");
//    CFRunLoopRun();
//    
//    // Shouldn't ever get here. Bzzzt
//    printf("Unexpectedly back from CFRunLoopRun()!\n");
//
//}


int main(int argc, char * argv[]) {
    @autoreleasepool {
//        testSMS();
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}


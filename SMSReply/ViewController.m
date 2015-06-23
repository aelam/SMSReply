//
//  ViewController.m
//  SMSReply
//
//  Created by Ryan Wang on 15/6/19.
//  Copyright (c) 2015年 Ryan Wang. All rights reserved.
//

#import "ViewController.h"
#import "CTMessageCenter.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *numberField;
@property (nonatomic, weak) IBOutlet UITextField *contentField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sendSMS:(id)sender {
    
    NSString *phone = self.numberField.text;
    NSString *content = self.contentField.text;
    
    BOOL st = [[CTMessageCenter sharedMessageCenter] sendSMSWithText:phone serviceCenter:nil toAddress:content];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"发送状态" message:st?@"成功":@"失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}

@end

//
//#import <Foundation/Foundation.h>
//#import "Headers/CDStructures.h"
//#import "Headers/CTMessageCenter.h"
//#import "Headers/CTMessagePart.h"
//#import "Headers/CTMessageAddress-Protocol.h"
//#import "Headers/CTMessage.h"
//
//
//然后使用的时候一句话，搞定。
//
//[[CTMessageCenter sharedMessageCenter] sendSMSWithText:@"hf" serviceCenter:nil toAddress:@"10086"];

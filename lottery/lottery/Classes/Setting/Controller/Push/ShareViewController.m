//
//  ShareViewController.m
//  lottery
//
//  Created by cain on 16/8/29.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "ShareViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
}

-(void)group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:@"WeiboSina" title:@"新浪分享"];
    SettingItem *si2 = [SettingArrawItem itemWithIcon:@"SmsShare" title:@"短信分享"];

    SettingItem *s3 = [SettingArrawItem itemWithIcon:@"MailShare" title:@"邮件分享"];
    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    group0.items = @[si1,si2,s3];
    
    [self.dataList addObject:group0];
    
}

@end

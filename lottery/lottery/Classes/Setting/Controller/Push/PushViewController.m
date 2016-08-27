//
//  PushViewController.m
//  lottery
//
//  Created by mac on 16/8/27.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "PushViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import "SorceShowViewController.h"

@interface PushViewController ()


@end

@implementation PushViewController

-(void)viewDidLoad{
    [self group0];
}

-(void)group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:nil title:@"开奖号码推送" destArrawClass:[PushViewController class]];
    SettingItem *si2 = [SettingArrawItem itemWithIcon:nil title:@"中奖号码提醒"];
    
    
    SettingItem *s3 = [SettingArrawItem itemWithIcon:nil title:@"比分直播" destArrawClass:[SorceShowViewController class]];
    SettingItem *s4 = [SettingArrawItem itemWithIcon:nil title:@"中奖动画"];
    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    group0.items = @[si1,si2,s3,s4];
    
    [self.dataList addObject:group0];

}


@end

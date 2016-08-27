//
//  SettingTableViewController.m
//  lottery
//
//  Created by cain on 16/8/23.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SettingTableViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import "MBProgressHUD+MJ.h"
#import "TestSetViewController.h"

#import "PruductViewController.h"


#import "PushViewController.h"


@interface SettingTableViewController()



@end

@implementation SettingTableViewController



-(void)viewDidLoad{
    [self group0];
    [self group1];
}


-(void) group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:@"MorePush" title:@"推送和提醒" destArrawClass:[PushViewController class]];
    SettingItem *si2 = [SettingSwithItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    
    
    SettingItem *s3 = [SettingSwithItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    
    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    group0.items = @[si1,si2,s3];
    group0.header = @"我是头部";
    group0.footer = @"我是底部";
    
    [self.dataList addObject:group0];

}


-(void) group1{
    SettingItem *si3 = [SettingArrawItem itemWithIcon:@"MoreUpdate" title:@"检查新版本"];
    
    si3.option = ^{
        [MBProgressHUD showMessage:@"正在加载..."];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"检查更新" message:nil delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确认升级", nil];
            
            [alert show];
        });
    };
    
    SettingItem *si4 = [SettingArrawItem itemWithIcon:@"MoreHelp" title:@"帮助"];
    
    si4.option = ^{
        NSLog(@"bangzhu");
        
    };
    
    SettingArrawItem *s6 = [SettingArrawItem itemWithIcon:@"MorePush" title:@"分享" destArrawClass:[TestSetViewController class]];
    SettingArrawItem *s7 = [SettingArrawItem itemWithIcon:@"MoreMessage" title:@"查看消息" destArrawClass:[TestSetViewController class]];
    SettingArrawItem *s8 = [SettingArrawItem itemWithIcon:@"MoreNetease" title:@"产品推荐" destArrawClass:[PruductViewController class]];
    SettingArrawItem *s9 = [SettingArrawItem itemWithIcon:@"MoreAbout" title:@"关于" destArrawClass:[TestSetViewController class]];
    
    SettingGroup *group1 = [[SettingGroup alloc]init];
    group1.items = @[si3,si4,s6,s7,s8,s9];
    group1.header = @"我是头部";
    group1.footer = @"我是底部";
    
    [self.dataList addObject:group1];
}
@end

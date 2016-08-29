//
//  AboutViewController.m
//  lottery
//
//  Created by cain on 16/8/29.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "AboutViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import "ILAboutHeaderView.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
    
    self.tableView.tableHeaderView = [ILAboutHeaderView headerView];
}

-(void)group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:nil title:@"评分支持"];
    SettingItem *si2 = [SettingArrawItem itemWithIcon:nil title:@"客服电话"];
    si2.subtitle = @"020-2i39939";
    

    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    

    group0.items = @[si1,si2];
    
    [self.dataList addObject:group0];
    
}

@end

//
//  HelpViewController.m
//  lottery
//
//  Created by mac on 16/8/28.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "HelpViewController.h"


#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
}

-(void)group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:nil title:@"开奖" destArrawClass:nil];
    SettingItem *si2 = [SettingArrawItem itemWithIcon:nil title:@"中奖"];
    
    
    SettingItem *s3 = [SettingArrawItem itemWithIcon:nil title:@"比分" destArrawClass:nil];
    SettingItem *s4 = [SettingArrawItem itemWithIcon:nil title:@"中奖"];
    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    group0.items = @[si1,si2,s3,s4];
    
    [self.dataList addObject:group0];
    
}

@end

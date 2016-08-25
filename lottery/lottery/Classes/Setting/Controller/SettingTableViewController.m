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

#import "TestSetViewController.h"

@interface SettingTableViewController()

@property (nonatomic,strong) NSMutableArray *dataList;

@end

@implementation SettingTableViewController


-(NSMutableArray *)dataList{
    if (_dataList == nil) {
        _dataList = [NSMutableArray array];
        
        SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:@"MorePush" title:@"推送和提醒"];
        SettingItem *si2 = [SettingSwithItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        si1.destArrawClass = [TestSetViewController class];
        
        SettingItem *s3 = [SettingSwithItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        SettingItem *s4 = [SettingSwithItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        SettingItem *s5 = [SettingSwithItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        SettingItem *s6 = [SettingSwithItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        
        SettingGroup *group0 = [[SettingGroup alloc]init];
        group0.items = @[si1,si2];
        group0.header = @"我是头部";
        group0.footer = @"我是底部";
        
        SettingItem *si3 = [SettingArrawItem itemWithIcon:@"MoreUpdate" title:@"检查新版本"];
        SettingItem *si4 = [SettingArrawItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        SettingItem *si5 = [SettingArrawItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        SettingItem *si6 = [SettingArrawItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        SettingItem *si7 = [SettingArrawItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        SettingItem *si8 = [SettingArrawItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        
        
        SettingGroup *group1 = [[SettingGroup alloc]init];
        group1.items = @[si3,si4];
        group1.header = @"我是头部";
        group1.footer = @"我是底部";
        
        
        [_dataList addObject:group0];
        [_dataList addObject:group1];
                     
    }
    
    return _dataList;
}


-(id)init{
    if(self = [super initWithStyle:UITableViewStyleGrouped]){
        
    }
    return self;
}

//有多少组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataList.count;
}


//每组有多少个
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     SettingGroup *arry = self.dataList[section];
    
    return arry.items.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //创建cell
    SettingCell *cell = [SettingCell CellWithTableView:tableView];
    //取出模型
    SettingGroup *arry = self.dataList[indexPath.section];
    SettingItem *item =  arry.items[indexPath.row];
    //传递模型
    cell.item = item;
    return cell;
}


-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
     SettingGroup *arry = self.dataList[section];
    
    return arry.header;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    SettingGroup *arry = self.dataList[section];
    
    return arry.footer;
}


//条目的单击事件

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //取出模型
    SettingGroup *group =  self.dataList[indexPath.section];
    
    SettingItem *itemclick = group.items[indexPath.row];
    
    if ([itemclick isKindOfClass:[SettingArrawItem class]]) {
        SettingArrawItem *itemArraw = (SettingArrawItem *)itemclick;
        
        UIViewController *vc = [[itemArraw.destArrawClass alloc] init];
        
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    //跳转
    
   
}



















@end

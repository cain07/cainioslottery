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

@interface SettingTableViewController()

@property (nonatomic,strong) NSMutableArray *dataList;

@end

@implementation SettingTableViewController


-(NSMutableArray *)dataList{
    if (_dataList == nil) {
        _dataList = [NSMutableArray array];
        
        SettingItem *si1 = [SettingItem itemWithIcon:@"MorePush" title:@"推送和提醒"];
        SettingItem *si2 = [SettingItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        
        SettingGroup *group0 = [[SettingGroup alloc]init];
        group0.items = @[si1,si2];
        group0.header = @"我是头部";
        group0.footer = @"我是底部";
        
        SettingItem *si3 = [SettingItem itemWithIcon:@"MoreUpdate" title:@"检查新版本"];
        SettingItem *si4 = [SettingItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        
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
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    SettingGroup *arry = self.dataList[indexPath.section];
    
    
    SettingItem *item =  arry.items[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:item.icon];
    
    cell.textLabel.text = item.title;
    
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























@end

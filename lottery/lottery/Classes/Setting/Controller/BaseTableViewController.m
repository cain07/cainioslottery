//
//  BaseTableViewController.m
//  lottery
//
//  Created by mac on 16/8/27.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "BaseTableViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import "MBProgressHUD+MJ.h"
#import "TestSetViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

-(NSMutableArray *)dataList{
    if (_dataList == nil) {
        _dataList = [NSMutableArray array];
        
          }
    
    return _dataList;
}


-(id)init{
    if(self = [super initWithStyle:UITableViewStyleGrouped]){
        
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.tableView.backgroundView = nil;
    
    self.tableView.backgroundColor = ILColor(244, 243, 241);
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
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 1 && indexPath.row == 0) {
        NSLog(@"sssss");
    }
    
    //取出模型
    SettingGroup *group =  self.dataList[indexPath.section];
    
    SettingItem *itemclick = group.items[indexPath.row];
    
    if (itemclick.option) {
        itemclick.option();
        return;
    }
    
    if ([itemclick isKindOfClass:[SettingArrawItem class]]) {
        
        
        SettingArrawItem *itemArraw = (SettingArrawItem *)itemclick;
        
        if(itemArraw.destArrawClass !=nil){
            UIViewController *vc = [[itemArraw.destArrawClass alloc] init];
            
            vc.title = itemArraw.title;
            [self.navigationController pushViewController:vc animated:YES];
        }
        
        
    }
    
}

@end

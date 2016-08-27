//
//  SorceShowViewController.m
//  lottery
//
//  Created by mac on 16/8/27.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SorceShowViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import "SettingLableItem.h"

#import "SaveTool.h"

@interface SorceShowViewController ()

@property (nonatomic,strong) SettingLableItem *start;

@property (nonatomic,strong) UIDatePicker *picker;
@end

@implementation SorceShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
    [self group1];
    [self group2];
}

-(void)group0{
    SettingArrawItem *s = [SettingArrawItem itemWithIcon:nil title:@"提醒我关注比赛" destArrawClass:nil];
    
    SettingGroup *group = [[SettingGroup alloc]init];
    group.items = @[s];
    group.footer = @"开启状态，app将要在比赛开始的时候提醒你啊，如果你关闭了啊，讲不提醒你啊";
    
    [self.dataList addObject:group];

}

-(void)group1{
    SettingLableItem *start = [SettingLableItem itemWithIcon:nil title:@"开始时间"];
    
    _start = start;
    
   // start.text = [SaveTool objectForKey:_start.title];
    
    if (!start.text.length) {
        start.text = @"0:00";
    }
    
    
    start.option = ^{
        UITextField *utf = [[UITextField alloc] init];
        UIDatePicker *picker = [[UIDatePicker alloc]init];
        picker.datePickerMode = UIDatePickerModeTime;
        picker.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
        
        [picker addTarget:self action:@selector(pickerchangevalue:)  forControlEvents:UIControlEventValueChanged];
        
        utf.inputView = picker;
        
        [utf becomeFirstResponder];
        [self.view addSubview: utf];
    };
    
    SettingGroup *group = [[SettingGroup alloc]init];
    group.items = @[start];
    
    
    [self.dataList addObject:group];
}

-(void)pickerchangevalue:(UIDatePicker *) datapicker{
    
    NSLog(@"%@--",datapicker.date);
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    df.dateFormat = @"HH:mm";
    _start.text =[df stringFromDate:datapicker.date] ;
    
    
    //[SaveTool setObject:_start.text forKey:_start.title];
    [self.tableView reloadData];
}

-(void)group2{
    SettingLableItem *s = [SettingLableItem itemWithIcon:nil title:@"结束时间"];
    s.text = @"0:00";
    SettingGroup *group = [[SettingGroup alloc]init];
    group.items = @[s];
    
    [self.dataList addObject:group];
}


@end

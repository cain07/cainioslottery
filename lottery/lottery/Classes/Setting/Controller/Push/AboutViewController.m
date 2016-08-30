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

@property (nonatomic,weak) UIWebView *webview;

@end

@implementation AboutViewController

-(UIWebView *)webview{
    
    if (_webview == nil) {
        _webview = [[UIWebView alloc] init];
    }
    
    return _webview;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
    
    self.tableView.tableHeaderView = [ILAboutHeaderView headerView];
}

-(void)group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:nil title:@"评分支持"];
    
    si1.option = ^{
        NSString *appid = @"635768442";
        NSString *str = [NSString stringWithFormat:
                         @"itms-apps://itunes.apple.com/cn/app/id%@?mt=8", appid];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
    };
    
    SettingItem *si2 = [SettingArrawItem itemWithIcon:nil title:@"客服电话"];
    si2.subtitle = @"020-2i39939";
    
    si2.option = ^{
//        NSURL *url = [NSURL URLWithString:@"telprompt://15652287701"];
//        [[UIApplication sharedApplication] openURL:url];
        
        [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"tel://10010"]]];
    };

    SettingGroup *group0 = [[SettingGroup alloc]init];
    
    group0.items = @[si1,si2];
    
    [self.dataList addObject:group0];
    
}

@end

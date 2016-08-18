//
//  LTTabBarViewController.m
//  lottery
//
//  Created by cain on 16/8/18.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "LTTabBarViewController.h"

#import "LTTabBar.h"

@interface LTTabBarViewController ()

@end

@implementation LTTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tabBar removeFromSuperview];
    
    LTTabBar *tabBar = [[LTTabBar alloc] init];
    
    tabBar.frame = self.tabBar.frame;
    
    [self.view addSubview:tabBar];
    
    
}


@end

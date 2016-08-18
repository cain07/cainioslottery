//
//  LTTabBarViewController.m
//  lottery
//
//  Created by cain on 16/8/18.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "LTTabBarViewController.h"

#import "LTTabBar.h"

@interface LTTabBarViewController()<LTTabBarDelegate>

@end

@implementation LTTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tabBar removeFromSuperview];
    
    LTTabBar *tabBar = [[LTTabBar alloc] init];
    
    tabBar.frame = self.tabBar.frame;
    tabBar.delegate = self;
    
    [self.view addSubview:tabBar];
    
    
}

-(void)tabBar:(LTTabBar *)tabBar didSelectIndex:(int)index{
    self.selectedIndex = index;
}


@end

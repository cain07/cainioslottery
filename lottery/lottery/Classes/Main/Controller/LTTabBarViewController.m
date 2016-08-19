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
    
    tabBar.delegate = self;
    
    tabBar.frame = self.tabBar.frame;
    
    
    [self.view addSubview:tabBar];
    
    NSString *imagename = nil;
    NSString *imagenamesel = nil;
    
    for (int i=0; i<self.childViewControllers.count; i++) {
            
        imagename  = [NSString stringWithFormat:@"TabBar%d",i+1];
            
        imagenamesel = [NSString stringWithFormat:@"TabBar%dSel",i+1];

        
        [tabBar addTabBarButtonWithName:imagename imageNameHigh:imagenamesel];
    }
    
    
}

-(void)tabBar:(LTTabBar *)tabBar didSelectIndex:(NSInteger)index{
    self.selectedIndex = index;
}


@end

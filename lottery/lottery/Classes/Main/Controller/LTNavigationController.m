//
//  LTNavigationController.m
//  lottery
//
//  Created by cain on 16/8/22.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "LTNavigationController.h"

@interface LTNavigationController ()

@end

@implementation LTNavigationController


+(void)initialize{
    
    if (self == [LTNavigationController class]) {
        NSLog(@"%s",__func__);
        [self setBarItem];
        
        if (ios7) return;
        [self setNavBar];
        
    }
    
}

+(void) setBarItem{
    UIBarButtonItem *baritem = [UIBarButtonItem appearance];
    
    [baritem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [baritem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    
    [baritem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    [baritem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];

}

+(void) setNavBar{
    UINavigationBar *bar = [UINavigationBar appearance];
    
    UIImage *navImage = nil;
    
    if(ios7){
        navImage = [UIImage imageNamed:@"NavBar64"];
    }else{
        navImage = [UIImage imageNamed:@"NavBar"];
    }
    
    [bar setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
    
    NSDictionary *dic = @{NSForegroundColorAttributeName :[UIColor whiteColor],
                          NSFontAttributeName:[UIFont systemFontOfSize:15]
                          };
    
    [bar setTitleTextAttributes:dic];
    
    [bar setTintColor:[UIColor whiteColor]];

}


-(void)viewDidLoad{
    [super viewDidLoad];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed = YES;
    
    return [super pushViewController:viewController animated:animated];
}



@end

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

    }
    
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

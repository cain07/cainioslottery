//
//  LoginViewController.m
//  lottery
//
//  Created by cain on 16/8/23.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "LoginViewController.h"

#import "SettingTableViewController.h"

#import "UIImage+Tools.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [_btnLogin setBackgroundImage:[UIImage imageWithResizableWithImageName:@"RedButton"] forState:UIControlStateNormal];
    
    [_btnLogin setBackgroundImage:[UIImage imageWithResizableWithImageName:@"RedButtonPressed"] forState:UIControlStateSelected];
    // Do any additional setup after loading the view.
}

- (IBAction)btnSettingOnClick:(id)sender {
    SettingTableViewController *stvc = [[SettingTableViewController alloc] init];
    
    [self.navigationController pushViewController:stvc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

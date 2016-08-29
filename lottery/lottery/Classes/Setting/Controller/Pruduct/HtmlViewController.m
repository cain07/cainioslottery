//
//  HtmlViewController.m
//  lottery
//
//  Created by cain on 16/8/29.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "HtmlViewController.h"

#import "Helpbean.h"

@interface HtmlViewController ()<UIWebViewDelegate>

@end

@implementation HtmlViewController

-(void)loadView{
    self.view = [[UIWebView alloc]init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStyleBordered target:self action:@selector(cancel)];
    self.navigationItem.leftBarButtonItem = item;
    
    UIWebView *web = (UIWebView *)self.view;
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:_help.html withExtension:nil];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    
    web.delegate = self;
    [web loadRequest:request];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSString *js = [NSString stringWithFormat:@"window.location.href = '#%@';",_help.ID];
    [webView stringByEvaluatingJavaScriptFromString:js];
}

-(void) cancel{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

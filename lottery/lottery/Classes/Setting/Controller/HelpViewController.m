//
//  HelpViewController.m
//  lottery
//
//  Created by mac on 16/8/28.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "HelpViewController.h"


#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import "Helpbean.h"
#import "HtmlViewController.h"

#import "LTNavigationController.h"

@interface HelpViewController ()

@property (nonatomic,strong) NSMutableArray *htmls;

@end

@implementation HelpViewController

-(NSMutableArray *)htmls{
    
    
    if (_htmls == nil) {
        _htmls = [NSMutableArray array];
    }
   
    NSString *file = [[NSBundle mainBundle]pathForResource:@"help.json" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:file];
    
    NSMutableArray *jsonarray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    
    for (NSDictionary *dict in jsonarray) {
        Helpbean *bean = [Helpbean HelpWithDict:dict];
        [_htmls addObject:bean];
    }
    
    NSLog(@"%@",_htmls);
    
    return _htmls;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
    
}

-(void)group0{
    
    NSMutableArray *items = [NSMutableArray array];
    for (Helpbean *bean in self.htmls) {
        NSLog(@"%@---%@--",bean.title,bean.html);
        SettingArrawItem *item = [SettingArrawItem itemWithIcon:nil title:bean.title destArrawClass:nil];
        [items addObject:item];
    }
    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    group0.items = items;
    
    [self.dataList addObject:group0];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Helpbean *bean = self.htmls[indexPath.row];
    
    HtmlViewController *htmlctl = [[HtmlViewController alloc]init];
    
    htmlctl.help = bean;
    htmlctl.title = bean.title;
    
    LTNavigationController *nct = [[LTNavigationController alloc] initWithRootViewController:htmlctl];
    
    [self presentViewController:nct animated:YES completion:nil];
}



@end

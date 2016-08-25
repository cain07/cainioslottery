//
//  SettingCell.h
//  lottery
//
//  Created by cain on 16/8/25.
//  Copyright © 2016年 cain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SettingItem;

@interface SettingCell : UITableViewCell


@property (nonatomic,strong) SettingItem *item;


+(instancetype) CellWithTableView :(UITableView *)tableview;

@end

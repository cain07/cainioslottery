//
//  SettingItem.m
//  lottery
//
//  Created by cain on 16/8/24.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SettingItem.h"

@implementation SettingItem


+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    SettingItem *item = [[self alloc] init];
    
    item.icon = icon;
    item.title = title;
    
    return item;
}
@end

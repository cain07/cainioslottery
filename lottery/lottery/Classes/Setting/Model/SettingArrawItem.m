//
//  SettingArrawItem.m
//  lottery
//
//  Created by cain on 16/8/25.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SettingArrawItem.h"

@implementation SettingArrawItem

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destArrawClass:(Class)destArrawClass{
    
    SettingArrawItem *item = [super itemWithIcon:icon title:title];
    
    item.destArrawClass = destArrawClass;
    return item;
}
@end

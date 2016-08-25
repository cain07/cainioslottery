//
//  SettingArrawItem.h
//  lottery
//
//  Created by cain on 16/8/25.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SettingItem.h"

@interface SettingArrawItem : SettingItem

@property (nonatomic,strong) Class destArrawClass;

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *) title destArrawClass:(Class) destArrawClass;

@end

//
//  SettingItem.h
//  lottery
//
//  Created by cain on 16/8/24.
//  Copyright © 2016年 cain. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SettingItemOption)();

@interface SettingItem : NSObject

@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *icon;

@property (nonatomic,copy) SettingItemOption  option;


+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *) title;

@end

//
//  SettingItem.h
//  lottery
//
//  Created by cain on 16/8/24.
//  Copyright © 2016年 cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingItem : NSObject

@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *icon;

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *) title;

@end

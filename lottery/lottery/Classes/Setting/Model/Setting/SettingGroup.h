//
//  SettingGroup.h
//  lottery
//
//  Created by cain on 16/8/25.
//  Copyright © 2016年 cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingGroup : NSObject

@property (nonatomic,copy) NSString *header;

@property(nonatomic,copy) NSString *footer;

@property(nonatomic,strong) NSArray *items;


@end

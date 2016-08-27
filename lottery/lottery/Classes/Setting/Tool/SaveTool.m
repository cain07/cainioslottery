//
//  SaveTool.m
//  lottery
//
//  Created by mac on 16/8/27.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SaveTool.h"

@implementation SaveTool

+(void)setObject:(id)value forKey:(NSString *)defaultName{

    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(id)objectForKey:(NSString *)defaultName{

    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

@end

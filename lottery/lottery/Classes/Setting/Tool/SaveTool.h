//
//  SaveTool.h
//  lottery
//
//  Created by mac on 16/8/27.
//  Copyright © 2016年 cain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SaveTool : NSObject
+ (void)setObject:(nullable id)value forKey:(NSString *)defaultName;
+ (nullable id)objectForKey:(NSString *)defaultName;

@end

//
//  SettingLableItem.m
//  lottery
//
//  Created by mac on 16/8/27.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SettingLableItem.h"
#import "SaveTool.h"

@implementation SettingLableItem

-(void)setText:(NSString *)text{
    _text = text;
    
    [SaveTool setObject:_text forKey:self.title];
}

-(void)setTitle:(NSString *)title{
    
    [super setTitle:title];
    
    _text = [SaveTool objectForKey:title];
}

@end

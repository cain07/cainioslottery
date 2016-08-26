//
//  Product.m
//  lottery
//
//  Created by cain on 16/8/26.
//  Copyright © 2016年 cain. All rights reserved.
//




#import "Product.h"

@implementation Product



+(instancetype)productWithDict:(NSDictionary *)dict{
    Product *pro = [[Product alloc] init];
    
    pro.title = dict[@"title"];
    pro.url = dict[@"url"];
    pro.ID = dict[@"id"];
    pro.icon = dict[@"icon"];
    pro.customUrl = dict[@"customUrl"];
    return pro;

}

-(void)setIcon:(NSString *)icon{
    _icon = [icon stringByReplacingOccurrencesOfString:@"@2x.png" withString:@""];
}

@end

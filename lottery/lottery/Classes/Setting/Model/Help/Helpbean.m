//
//  helpbean.m
//  lottery
//
//  Created by cain on 16/8/29.
//  Copyright © 2016年 cain. All rights reserved.


//


#import "Helpbean.h"

@implementation Helpbean

+(instancetype)HelpWithDict:(NSDictionary *)dict{
    Helpbean *bean = [[Helpbean alloc] init];
    
    bean.title = dict[@"title"];
    bean.html = dict[@"html"];
    bean.ID = dict[@"id"];
    return bean;

}

@end

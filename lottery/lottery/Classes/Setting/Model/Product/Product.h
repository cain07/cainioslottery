//
//  Product.h
//  lottery
//
//  Created by cain on 16/8/26.
//  Copyright © 2016年 cain. All rights reserved.
//

//"title": "网易新闻",
//"id": "com.netease.news",
//"url": "http://itunes.apple.com/app/id425349261?mt=8",
//"icon": "newsapp@2x.png",
//"customUrl": "newsapp"

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *customUrl;


+(instancetype) productWithDict:(NSDictionary *) dict;


@end

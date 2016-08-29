//
//  helpbean.h
//  lottery
//
//  Created by cain on 16/8/29.
//  Copyright © 2016年 cain. All rights reserved.
//

/**
 "title" : "如何购彩？",
 "html" : "help.html",
 "id" : "howtobuy"
 */


#import <Foundation/Foundation.h>

@interface Helpbean : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *html;

+(instancetype) HelpWithDict:(NSDictionary *) dict;

@end

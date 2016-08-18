//
//  LTTabBar.h
//  lottery
//
//  Created by cain on 16/8/18.
//  Copyright © 2016年 cain. All rights reserved.
//

#import <UIKit/UIKit.h>


@class LTTabBar;
@protocol LTTabBarDelegate <NSObject>

@optional
-(void)tabBar:(LTTabBar *)tabBar didSelectIndex:(int)index;

@end


@interface LTTabBar : UIView

@property (nonatomic,weak) id<LTTabBarDelegate> delegate;

@end

//
//  LTTabBar.m
//  lottery
//
//  Created by cain on 16/8/18.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "LTTabBar.h"

#import "LTTabBarButton.h"

@interface LTTabBar()

@property (nonatomic,weak)UIButton *selectButton;

@end

@implementation LTTabBar




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addBtn];
    }
    return self;
}

-(void)addBtn{
    
    NSString *imagename = nil;
    NSString *imagenamesel = nil;
    for (int i=0; i<5; i++) {
        
        imagename  = [NSString stringWithFormat:@"TabBar%d",i+1];
        
        imagenamesel = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        
        UIButton *btn = [LTTabBarButton buttonWithType:UIButtonTypeCustom];
        
        [btn setBackgroundImage:[UIImage imageNamed:imagename] forState:UIControlStateNormal];
        
        [btn setBackgroundImage:[UIImage imageNamed:imagenamesel] forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:btn];
    }
}

-(void) btnclick:(UIButton *) button{
    
    _selectButton.selected = NO;
    button.selected = YES;
    
    _selectButton = button;
    
}

//设置按钮的 位置 宽高
-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat btnW = self.bounds.size.width / self.subviews.count;
    CGFloat btnH = self.bounds.size.height;
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    
    for (int i= 0; i<self.subviews.count; i++) {
        UIButton *btn = self.subviews[i];
        
        btnX = i* btnW;
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
    
}


















@end

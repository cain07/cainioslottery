//
//  LTTitleButton.m
//  lottery
//
//  Created by cain on 16/8/22.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "LTTitleButton.h"

#import <Av>

@implementation LTTitleButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
 
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    
    NSDictionary *dict = @{
                           NSFontAttributeName :[UIFont systemFontOfSize:15]
                           };
    
    CGFloat titleH = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes:dict context:nil].size.width;
    
    CGFloat titleW = contentRect.size.height;
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    CGFloat imageW = 30;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
    
    return CGRectMake(imageX, imageY, imageW, imageH);
}

-(void)awakeFromNib{
    self.imageView.contentMode = UIViewContentModeCenter;
}

@end

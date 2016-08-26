//
//  ProductCell.m
//  lottery
//
//  Created by cain on 16/8/26.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "ProductCell.h"

@interface ProductCell()

@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *lbName;

@end

@implementation ProductCell

-(void)awakeFromNib{
    _img.layer.cornerRadius = 10;
    
    _img.clipsToBounds = YES;
}

-(void)setPro:(Product *)pro{
    _pro = pro;
    
    NSLog(@"%@---",pro.icon);
    NSLog(@"%@---",pro.title);
    _img.image = [UIImage imageNamed:pro.icon];
    _lbName.text = pro.title;
}



@end

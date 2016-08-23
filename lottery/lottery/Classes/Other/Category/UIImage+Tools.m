//
//  UIImage+Tools.m
//  lottery
//
//  Created by cain on 16/8/23.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "UIImage+Tools.h"

@implementation UIImage (Tools)

+(instancetype)imageWithResizableWithImageName:(NSString *)imageName{
    UIImage *img = [UIImage imageNamed:imageName];
    img = [img stretchableImageWithLeftCapWidth:img.size.width * 0.5 topCapHeight:img.size.height*0.5];
    return img;
}

@end

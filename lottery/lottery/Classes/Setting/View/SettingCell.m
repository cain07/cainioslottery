//
//  SettingCell.m
//  lottery
//
//  Created by cain on 16/8/25.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "SettingCell.h"

#import "SettingItem.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"


@interface SettingCell()

@property (nonatomic,strong) UISwitch *switchView;

@property (nonatomic,strong) UIImageView *imageItemView;

@end

@implementation SettingCell


-(UISwitch *)switchView{
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
    }
    
    return _switchView;
}

-(UIImageView *)imageItemView{
    if (_imageItemView == nil) {
        _imageItemView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    
    return _imageItemView;
}

-(void)setItem:(SettingItem *)item{
    _item = item;
    
    
    NSLog(@"%@",item);
    
    [self setUpValue];
    
    [self setUpAccessory];
    
}

-(void) setUpValue{
    self.imageView.image = [UIImage imageNamed:_item.icon];
    self.textLabel.text = _item.title;

}

-(void) setUpAccessory{
    if([_item isKindOfClass:[SettingArrawItem class]]){
        self.accessoryView = self.imageItemView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if([_item isKindOfClass:[SettingSwithItem class]]){
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else{
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
}

+(instancetype)CellWithTableView:(UITableView *)tableview{
    static NSString *ID = @"cell";
    SettingCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[SettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }

    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

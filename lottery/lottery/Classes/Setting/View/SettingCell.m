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

#import "SettingLableItem.h"


@interface SettingCell()

@property (nonatomic,strong) UISwitch *switchView;

@property (nonatomic,strong) UIImageView *imageItemView;

@property (nonatomic,strong) UILabel *labelView;

@end

@implementation SettingCell


-(UILabel *)labelView{
    if (_labelView == nil) {
        _labelView = [[UILabel alloc] init];
    }
    
    _labelView.bounds = CGRectMake(0, 0, 100, 40);
    _labelView.textColor = [UIColor redColor];
    _labelView.textAlignment = NSTextAlignmentRight;
    
    return _labelView;
}

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

    self.detailTextLabel.text = _item.subtitle;
}

-(void) setUpAccessory{
    if([_item isKindOfClass:[SettingArrawItem class]]){
        self.accessoryView = self.imageItemView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if([_item isKindOfClass:[SettingSwithItem class]]){
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else if([_item isKindOfClass:[SettingLableItem class]]){
        self.accessoryView = self.labelView;
        
        SettingLableItem *item = (SettingLableItem *)_item;
        self.labelView.text =item.text;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
        
    }
    
    else{
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
}

+(instancetype)CellWithTableView:(UITableView *)tableview{
    static NSString *ID = @"cell";
    SettingCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[SettingCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
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


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 237 233 218
        
        // 设置背景
        [self setUpBg];
        // 清空子视图的背景
        [self setSubViews];
        
    }
    
    return self;
}


- (void)setUpBg
{
    // 设置背景图片
    UIView *bg = [[UIView alloc] init];
    bg.backgroundColor = [UIColor whiteColor];
    self.backgroundView = bg;
    
    
    // 设置选中的背景图片
    UIView *selectedBg = [[UIView alloc] init];
    selectedBg.backgroundColor = ILColor(237, 233, 218);
    self.selectedBackgroundView = selectedBg;
}

- (void)setSubViews
{
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.backgroundColor = [UIColor clearColor];
}


@end

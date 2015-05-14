//
//  ViewTableViewCell.m
//  TableView_Up_Down
//
//  Created by 爱康国宾 on 15/5/14.
//  Copyright (c) 2015年 爱康国宾. All rights reserved.
//

#import "ViewTableViewCell.h"

@implementation ViewTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        if ([reuseIdentifier isEqualToString:@"cellOne"]) {
            
            _label = [[UILabel alloc] initWithFrame:CGRectMake(15, (self.bounds.size.height-30)/2.0, 60, 30)];
            _label.text = @"down";
            [self addSubview:_label];
            
            _button = [UIButton buttonWithType:UIButtonTypeCustom];
            _button.frame = CGRectMake(90, (self.bounds.size.height-44)/2.0, 44, 44);
            _button.backgroundColor = [UIColor purpleColor];
            [_button setTitle:@"down" forState:UIControlStateNormal];
            [self addSubview:_button];
            
        }else{
        
            _label = [[UILabel alloc] initWithFrame:CGRectMake(15, (self.bounds.size.height-30)/2.0, 60, 30)];
            _label.text = @"up";
            [self addSubview:_label];
            
            _button = [UIButton buttonWithType:UIButtonTypeCustom];
            _button.frame = CGRectMake(90, (self.bounds.size.height-44)/2.0, 44, 44);
            _button.backgroundColor = [UIColor orangeColor];
            [_button setTitle:@"up" forState:UIControlStateNormal];
            [self addSubview:_button];
        
        }
    }
    return self;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

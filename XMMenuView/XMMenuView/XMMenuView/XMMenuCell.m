//
//  XMMenuCell.m
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMMenuCell.h"
#import <Masonry.h>

@interface XMMenuCell ()

//@property (nonatomic, strong) UILabel *leftLabel;
//@property (nonatomic, strong) UILabel *middleLabel;
//@property (nonatomic, strong) UILabel *rightLabel;

@end

@implementation XMMenuCell

+ (instancetype)menuCellWithTableView:(UITableView *)tableView {
    
    static NSString * const ID = @"XMMenuCell";
    XMMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[XMMenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - SetupUI
- (void)setupUI {

    [self.contentView addSubview:self.leftLabel];
    [self.contentView addSubview:self.middleLabel];
    [self.contentView addSubview:self.rightLabel];

    [self.leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView);
        make.centerX.equalTo(self.contentView.mas_centerX).multipliedBy(0.35);
    }];
    [self.middleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView);
        make.centerX.equalTo(self.contentView.mas_centerX).multipliedBy(0.97);
        make.width.mas_equalTo(72);
    }];
    [self.rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView);
        make.centerX.equalTo(self.contentView.mas_centerX).multipliedBy(1.65);
    }];
}

#pragma mark - Getters and Setters
- (UILabel *)leftLabel {
    if (_leftLabel == nil) {
        _leftLabel = [[UILabel alloc] init];
        _leftLabel.text = @" ";
        _leftLabel.textColor = [UIColor whiteColor];
        _leftLabel.font = [UIFont systemFontOfSize:14];
    }
    return _leftLabel;
}

- (UILabel *)middleLabel {
    if (_middleLabel == nil) {
        _middleLabel = [[UILabel alloc] init];
        _middleLabel.text = @" ";
        _middleLabel.textColor = [UIColor whiteColor];
        _middleLabel.font = [UIFont systemFontOfSize:12];
        _middleLabel.numberOfLines = 0;
        _middleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _middleLabel;
}

- (UILabel *)rightLabel {
    if (_rightLabel == nil) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.text = @" ";
        _rightLabel.textColor = [UIColor whiteColor];
        _rightLabel.font = [UIFont systemFontOfSize:14];
    }
    return _rightLabel;
}

@end

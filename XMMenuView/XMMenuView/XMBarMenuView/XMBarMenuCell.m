//
//  XMBarMenuCell.m
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/8/1.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMBarMenuCell.h"
#import <Masonry.h>

@implementation XMBarMenuCell

+ (instancetype)barMenuCellWithTableView:(UITableView *)tableView {
    
    static NSString * const ID = @"XMBarMenuCell";
    XMBarMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[XMBarMenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
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
    
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.separateView];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.contentView);
    }];
    [self.separateView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(4);
        make.right.equalTo(self.contentView).offset(-4);
        make.bottom.equalTo(self.contentView).offset(1);
        make.height.mas_equalTo(1);
    }];
}

#pragma mark - Getters and Setters
- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @" ";
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.font = [UIFont systemFontOfSize:14];
    }
    return _titleLabel;
}

- (UIView *)separateView {
    if (_separateView == nil) {
        _separateView = [[UIView alloc] init];
        _separateView.backgroundColor = [UIColor whiteColor];
    }
    return _separateView;
}

@end

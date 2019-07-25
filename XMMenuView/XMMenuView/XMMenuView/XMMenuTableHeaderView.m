//
//  XMMenuTableHeaderView.m
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "XMMenuTableHeaderView.h"
#import <Masonry.h>

@interface XMMenuTableHeaderView ()

@property (nonatomic, strong) UIView *myBackgroundView;
@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UILabel *middleLabel;
@property (nonatomic, strong) UILabel *rightLabel;

@end

@implementation XMMenuTableHeaderView

+ (instancetype)menuTableHeaderViewWithTableView:(UITableView *)tableView {
    
    static NSString * const ID = @"XMMenuTableHeaderView";
    XMMenuTableHeaderView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:ID];
    if (headerView == nil) {
        headerView = [[XMMenuTableHeaderView alloc] initWithReuseIdentifier:ID];
    }
    return headerView;
}

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - SetupUI
- (void)setupUI {
    
    [self.contentView addSubview:self.myBackgroundView];
    [self.myBackgroundView addSubview:self.leftLabel];
    [self.myBackgroundView addSubview:self.middleLabel];
    [self.myBackgroundView addSubview:self.rightLabel];
    
    [self.myBackgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets = UIEdgeInsetsMake(0, 0, 0, 0);
    }];
    [self.leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.myBackgroundView);
        make.centerX.equalTo(self.myBackgroundView.mas_centerX).multipliedBy(0.35);
    }];
    [self.middleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.myBackgroundView);
        make.width.mas_equalTo(72);
    }];
    [self.rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.myBackgroundView);
        make.centerX.equalTo(self.myBackgroundView.mas_centerX).multipliedBy(1.65);
    }];
}

#pragma mark - Getters and Setters
- (UIView *)myBackgroundView {
    if (_myBackgroundView == nil) {
        _myBackgroundView = [[UIView alloc] init];
        _myBackgroundView.backgroundColor = [UIColor blackColor];
    }
    return _myBackgroundView;
}

- (UILabel *)leftLabel {
    if (_leftLabel == nil) {
        _leftLabel = [[UILabel alloc] init];
        _leftLabel.text = @"次数";
        _leftLabel.textColor = [UIColor whiteColor];
        _leftLabel.font = [UIFont systemFontOfSize:14];
    }
    return _leftLabel;
}

- (UILabel *)middleLabel {
    if (_middleLabel == nil) {
        _middleLabel = [[UILabel alloc] init];
        _middleLabel.text = @"时间";
        _middleLabel.textColor = [UIColor whiteColor];
        _middleLabel.font = [UIFont systemFontOfSize:14];
        _middleLabel.numberOfLines = 0;
        _middleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _middleLabel;
}

- (UILabel *)rightLabel {
    if (_rightLabel == nil) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.text = @"状态";
        _rightLabel.textColor = [UIColor whiteColor];
        _rightLabel.font = [UIFont systemFontOfSize:14];
    }
    return _rightLabel;
}

@end

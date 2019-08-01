//
//  XMBarMenuCell.h
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/8/1.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMBarMenuCell : UITableViewCell

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *separateView;

+ (instancetype)barMenuCellWithTableView:(UITableView *)tableView;

@end

NS_ASSUME_NONNULL_END

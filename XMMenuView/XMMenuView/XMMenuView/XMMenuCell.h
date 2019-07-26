//
//  XMMenuCell.h
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMMenuCell : UITableViewCell

@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UILabel *middleLabel;
@property (nonatomic, strong) UILabel *rightLabel;

+ (instancetype)menuCellWithTableView:(UITableView *)tableView;

@end

NS_ASSUME_NONNULL_END

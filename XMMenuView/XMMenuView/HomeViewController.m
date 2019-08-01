//
//  HomeViewController.m
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "HomeViewController.h"
#import "XMMenuView.h"
#import "XMBarMenuView.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate, XMBarMenuViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation HomeViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
}

#pragma mark - SetupUI
- (void)setupUI {
    
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"RightItem" style:UIBarButtonItemStylePlain target:self action:@selector(didClickBarButtonItem:)];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

#pragma mark - didClickBarButtonItem
- (void)didClickBarButtonItem:(UIBarButtonItem *)barButtonItem {
    
    NSArray *array = @[@"添加任务", @"扫一扫"];
    
    XMBarMenuView *barMenuView = [XMBarMenuView menuWithArray:array relyonView:barButtonItem];
    barMenuView.delegate = self;
    [barMenuView show];
}

#pragma mark - XMBarMenuViewDelegate
- (void)barMenuView:(XMBarMenuView *)barMenuView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        NSLog(@"添加任务");
    } else {
        NSLog(@"扫一扫");
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"aaa"];
    
    if (indexPath.row == 0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        [button setTitle:@"查看" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        button.frame = CGRectMake(233, 10, 43, 21);
//        [self.view addSubview:button];
        [button addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:button];
    }
    
    return cell;
}

#pragma mark - Events
- (void)didClickButton:(UIButton *)button {
    
    NSArray *array = @[
                       @{
                           @"count":@"第一次",
                           @"time":@"2019-01-01 01:01:00",
                           @"status":@"已失败"
                           },
                       @{
                           @"count":@"第二次",
                           @"time":@"2019-02-02 02:02:00",
                           @"status":@"已成功"
                           },
                       @{
                           @"count":@"第三次",
                           @"time":@"2019-03-03 03:03:00",
                           @"status":@"等待管理审核"
                           },
                       @{
                           @"count":@"第四次",
                           @"time":@"2019-04-04 04:04:00",
                           @"status":@"已失败"
                           },
                       @{
                           @"count":@"第五次",
                           @"time":@"2019-05-05 05:05:00",
                           @"status":@"已成功"
                           },
                       @{
                           @"count":@"第六次",
                           @"time":@"2019-06-06 06:06:00",
                           @"status":@"等待管理审核"
                           },
                       @{
                           @"count":@"第七次",
                           @"time":@"2019-07-07 07:07:00",
                           @"status":@"已失败"
                           },
                       ];
    
    XMMenuView *view = [XMMenuView menuWithArray:array relyonView:button];
    
    [view show];
}

#pragma mark - Getters and Setters
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

@end

//
//  HomeViewController.m
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "HomeViewController.h"
#import "XMMenuView.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation HomeViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
//    UIImage *image = [UIImage imageNamed:@"ic_filter_category_0"];
//    XMMenuAction *action = [XMMenuAction actionWithTitle:@"首页" image:image handler:^(XMMenuAction *action) {
//        NSLog(@"点击了%@",action.title);
//    }];
//    XMMenuAction *action1 = [XMMenuAction actionWithTitle:@"个人" image:image handler:^(XMMenuAction *action) {
//        NSLog(@"点击了%@",action.title);
//    }];
//    XMMenuAction *action2 = [XMMenuAction actionWithTitle:@"最新" image:image handler:^(XMMenuAction *action) {
//        NSLog(@"点击了%@",action.title);
//    }];
//    XMMenuAction *action3 = [XMMenuAction actionWithTitle:@"搜索页" image:image handler:^(XMMenuAction *action) {
//        NSLog(@"点击了%@",action.title);
//    }];
//    XMMenuAction *action4 = [XMMenuAction actionWithTitle:@"新闻页" image:image handler:^(XMMenuAction *action) {
//        NSLog(@"点击了%@",action.title);
//    }];
//    self.arr = @[action,action1,action2,action3,action4,action,action1,action2];
}

#pragma mark - SetupUI
- (void)setupUI {
    
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
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

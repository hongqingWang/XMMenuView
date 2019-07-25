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

@property(nonatomic,strong)NSArray      *arr;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation HomeViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
    UIImage *image = [UIImage imageNamed:@"ic_filter_category_0"];
    XMMenuAction *action = [XMMenuAction actionWithTitle:@"首页" image:image handler:^(XMMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    XMMenuAction *action1 = [XMMenuAction actionWithTitle:@"个人" image:image handler:^(XMMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    XMMenuAction *action2 = [XMMenuAction actionWithTitle:@"最新" image:image handler:^(XMMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    XMMenuAction *action3 = [XMMenuAction actionWithTitle:@"搜索页" image:image handler:^(XMMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    XMMenuAction *action4 = [XMMenuAction actionWithTitle:@"新闻页" image:image handler:^(XMMenuAction *action) {
        NSLog(@"点击了%@",action.title);
    }];
    
    self.arr = @[action,action1,action2,action3,action4,action,action1,action2];
}

#pragma mark - SetupUI
- (void)setupUI {
    
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    [button setTitle:@"查看" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    button.titleLabel.font = [UIFont systemFontOfSize:12];
//    button.frame = CGRectMake(233, 164, 43, 21);
//    [self.view addSubview:button];
//    [button addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
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
    
    XMMenuView *view = [XMMenuView menuWithActions:self.arr width:[UIScreen mainScreen].bounds.size.width - 60 relyonView:button];
    view.maxDisplayCount = 8;
    
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

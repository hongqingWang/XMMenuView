//
//  HomeViewController.m
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import "HomeViewController.h"
#import "XMMenuView.h"

@interface HomeViewController ()

@property(nonatomic,strong)NSArray      *arr;

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
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    button.frame = CGRectMake(100, 100, 100, 40);
//    button.frame = CGRectMake(100, 600, 100, 40);
    button.frame = CGRectMake(0, 64, 100, 40);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - Events
- (void)didClickButton:(UIButton *)button {
    
    XMMenuView *view = [XMMenuView menuWithActions:self.arr width:140 relyonView:button];
    view.maxDisplayCount = 8;
    
    [view show];
}

@end

//
//  XMMenuView.h
//  XMMenuView
//
//  Created by JiuFuKeJi on 2019/7/25.
//  Copyright © 2019 JiuFuKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMMenuView : UIView
//默认倒角   default = 5.0
@property (nonatomic,assign) CGFloat                        cornerRaius;
//设置菜单颜色  default = 白色（也可以通过BackgroundColor设置）
@property (nonatomic,strong) UIColor                       *menuColor;
//设置菜单单元格高度  default = 44
@property (nonatomic,assign) CGFloat                        menuCellHeight;
//是否显示阴影 default = YES(默认设置，也可以自己通过layer属性设置)
@property (nonatomic,assign,getter = isShadowShowing)BOOL   isShowShadow;
//选择菜单选项后消失 default = YES
@property (nonatomic,assign)  BOOL                          dismissOnselected;
//点击菜单外消失 default = YES
@property (nonatomic,assign)  BOOL                          dismissOnTouchOutside;
//设置偏移距离 default = 0（与触摸点在Y轴上的偏移）
@property (nonatomic,assign)  CGFloat                       offset;

// 从关联视图创建（可以是UIView和UIBarButtonItem）
+ (instancetype)menuWithArray:(NSArray *)array relyonView:(id)view;

- (void)show;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
@end

NS_ASSUME_NONNULL_END

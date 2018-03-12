//
//  UIButton+Unit.h
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonActionBlock)(NSInteger tag);

typedef NS_ENUM(NSInteger, ImagePosition) {
    LXMImagePositionLeft    = 0,                //图片在左，文字在右，默认
    LXMImagePositionRight   = 1,                //图片在右，文字在左
    LXMImagePositionTop     = 2,                //图片在上，文字在下
    LXMImagePositionBottom  = 3,                //图片在下，文字在上
};

@interface UIButton (Unit)

/**
 为UIButton添加TouchUpInside事件的Block回调（后续添加不同事情的回调）

 @param touchHandler 回调
 */
- (void)actionBlock:(ButtonActionBlock)touchHandler;

/**
 设置UIButton不同状态下的背景色

 @param backgroundColor 背景色
 @param state 按钮状态
 */
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

/**
 倒计时按钮配置（单次倒计时，需自己实现点击事件来循环调用）
 先设置好setTitle: forState:UIControlStateNormal，初始显示内容。

 @param timeout 倒计时秒数
 @param finishedTitle 结束时显示的标题
 @param counttingTitle 倒计时进行中的标题，和秒数配合显示，可修改源码自定义显示
 */
- (void)countDownTime:(NSUInteger)timeout finishedTitle:(NSString *)finishedTitle counttingTitle:(NSString *)counttingTitle;

@end

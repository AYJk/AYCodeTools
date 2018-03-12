//
//  UIButton+Unit.m
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import "UIButton+Unit.h"
#import <objc/runtime.h>

char *const UIButtonActionBlock = "UIButtonActionBlock";

@implementation UIButton (Unit)

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    [self setBackgroundImage:[UIButton imageWithColor:backgroundColor] forState:state];
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0, 0.0, 1.0, 1.0);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(contextRef, [color CGColor]);
    CGContextFillRect(contextRef, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (void)actionBlock:(ButtonActionBlock)touchHandler {
    objc_setAssociatedObject(self, UIButtonActionBlock, touchHandler, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(performBlockAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)performBlockAction:(UIButton *)button {
    ButtonActionBlock block = objc_getAssociatedObject(self, UIButtonActionBlock);
    if (block) {
        block(button.tag);
    }
}

- (void)countDownTime:(NSUInteger)timeout finishedTitle:(NSString *)finishedTitle counttingTitle:(NSString *)counttingTitle {
    __block NSUInteger countTime = timeout;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(timer, ^{
        countTime --;
        if (countTime <= 0) {   //  倒计时结束
            dispatch_source_cancel(timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                [self setTitle:finishedTitle forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self setTitle:[NSString stringWithFormat:@"%lu%@",(unsigned long)countTime,counttingTitle] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
            });
        }
    });
    dispatch_resume(timer);
}

@end

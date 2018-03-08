//
//  UIBarButtonItem+Block.h
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Block)

@property (nonatomic, copy) dispatch_block_t actionBlock;

@end

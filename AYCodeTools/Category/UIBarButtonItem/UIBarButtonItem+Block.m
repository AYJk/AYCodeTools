//
//  UIBarButtonItem+Block.m
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import "UIBarButtonItem+Block.h"
#import <objc/runtime.h>

char * const UIBarButtonItemActionBlock = "UIBarButtonItemActionBlock";

@implementation UIBarButtonItem (Block)

- (void)performActionBlock {
    dispatch_block_t block = self.actionBlock;
    if (block) {
        block();
    }
}

- (dispatch_block_t)actionBlock {
    return objc_getAssociatedObject(self, UIBarButtonItemActionBlock);
}

- (void)setActionBlock:(dispatch_block_t)actionBlock {
    if (actionBlock != self.actionBlock) {
        [self willChangeValueForKey:@"actionBlock"];
        objc_setAssociatedObject(self, UIBarButtonItemActionBlock, actionBlock, OBJC_ASSOCIATION_COPY);
        [self setTarget:self];
        [self setAction:@selector(performActionBlock)];
        [self didChangeValueForKey:@"actionBlock"];
    }
}

@end

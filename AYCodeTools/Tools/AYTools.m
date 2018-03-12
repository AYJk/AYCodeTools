//
//  AYTools.m
//  AYCodeTools
//
//  Created by AYJk on 2018/3/12.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import "AYTools.h"

static AYTools *shareInstance = nil;

@interface AYTools()

@property (nonatomic, assign) DeviceScreenSize deviceScreenSize;

@end

@implementation AYTools

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc] init];
    });
    return shareInstance;
}

#pragma mark 设备相关
+ (DeviceScreenSize)currentDeviceType {
    CGFloat deviceWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat deviceHeight = [UIScreen mainScreen].bounds.size.height;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (deviceWidth == 320.0 && deviceHeight == 480.0) {
            return iPhone320_480;
        } else if (deviceWidth == 320.0 && deviceHeight == 568.0) {
            return iPhone320_568;
        } else if (deviceWidth == 375.0 && deviceHeight == 667.0) {
            return iPhone375_667;
        } else if (deviceWidth == 414.0 && deviceHeight == 736.0) {
            return iPhone414_736;
        } else if (deviceWidth == 375 && deviceHeight == 812.0) {
            return iPhone375_812;
        }
        return iPhoneUnknown;
    } else {
        return otherDevice;
    }
}

@end

//
//  AYTools.h
//  AYCodeTools
//
//  Created by AYJk on 2018/3/12.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    iPhoneUnknown,  //  未知的iPhone机型
    iPhone320_480,  //  iPhone4,4s
    iPhone320_568,  //  iPhone5,5s,SE
    iPhone375_667,  //  iPhone6,6s,7,8
    iPhone414_736,  //  iPhone6p,6sp,7p,8p
    iPhone375_812,  //  iPhoneX
    otherDevice     //  非iPhone机型
} DeviceScreenSize;

@interface AYTools : NSObject

/**
 单例

 @return 单例
 */
+ (instancetype)shareInstance;

/**
 根据当前设备屏幕物理分辨率返回对应的枚举

 @return 枚举值
 */
+ (DeviceScreenSize)currentDeviceType;
@end

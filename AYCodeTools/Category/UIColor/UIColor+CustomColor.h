//
//  UIColor+CustomColor.h
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CustomColor)

/**
 通过 16进制颜色代码 返回透明度为1的UIColor对象
 
 @param hex 16进制颜色代码
 @return UIColor对象
 */
+ (UIColor *)colorWithHexNumber:(UInt32)hex;

/**
 通过 16进制颜色代码 返回指定Alpha的UIColor对象

 @param hex 16进制颜色代码
 @param alpha 透明度
 @return UIColor对象
 */
+ (UIColor *)colorWithHexNumber:(UInt32)hex alpha:(CGFloat)alpha;

/**
 通过 16进制颜色代码字符串 返回透明度为1的UIColor对象

 @param hexString 16进制颜色代码字符串
 @return UIColor对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 通过 16进制颜色代码字符串 返回指定Alpha的UIColor对象
 
 @param hexString 16进制颜色代码
 @param alpha 透明度
 @return UIColor对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

/**
 通过非小数形式的RGB创建UIColor对象

 @param red 红色色值
 @param green 绿色色值
 @param blue 蓝色色值
 @param alpha 透明度
 @return UIColor对象
 */
+ (UIColor *)colorwithWholeRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

/**
 通过非小数形式的RGB创建UIColor对象
 
 @param red 红色色值
 @param green 绿色色值
 @param blue 蓝色色值
 @return UIColor对象
 */
+ (UIColor *)colorwithWholeRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

/**
 生成渐变色

 @param c1 开始渐变的颜色
 @param c2 结束渐变的颜色
 @param height 生成的图像高度
 @return UIColor对象
 */
+ (UIColor *)gradientFromColor:(UIColor *)c1 toColor:(UIColor *)c2 withHeight:(int)height;


@end

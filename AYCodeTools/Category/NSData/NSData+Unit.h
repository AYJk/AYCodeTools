//
//  NSData+Unit.h
//  AYCodeTools
//
//  Created by AYJk on 12/03/2018.
//  Copyright © 2018 AYJk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Unit)

/**
 字符串base64后转成data

 @param string 传入字符串
 @return 返回base64后转成的data
 */
+ (NSData *)dataWithBase64EncodedString:(NSString *)string;


/**
 NSData转NSString

 @param wrapWidth 换行长度 64 76
 @return base64后的字符串
 */
- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;

/**
 NSData转成NSString，默认换行长度为64

 @return base64后的字符串
 */
- (NSString *)base64EncodedString;

/**
 data转成16进制字符串

 @return 转换后的data数据
 */
- (NSString *)hexDataToString;

@end

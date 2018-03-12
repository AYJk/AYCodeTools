//
//  NSString+Unit.h
//  AYCodeTools
//
//  Created by AYJk on 12/03/2018.
//  Copyright © 2018 AYJk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSString (Unit)

/**
 SHA1加密

 @return 返回SHA1加密字符串
 */
- (NSString *)handleSHA1String;

/**
 MD5哈希算法

 @return 返回MD5哈希字符串
 */
- (NSString *)handleMD5String32Bit;

/**
 将NSString转成Base64

 @param string 传入的原始字符串
 @return 返回Base64后的字符串
 */
+ (NSString *)stringWithBase64EncodedString:(NSString *)string;

/**
 将NSString转成Base64

 @return 返回Base64后的字符串
 */
- (NSString *)base64EncodedString;

/**
 将Base64字符串转成原始字符串

 @return 返回原始字符串
 */
- (NSString *)base64DecodedString;

/**
 将string转成原始data数据

 @return 返回原始data数据
 */
- (NSData *)base64DecodedData;

/**
 将字符串转成data数据

 @return 返回data数据
 */
- (NSData *)stringToHexData;

/**
 是否包含Emoji表情

 @return YES为包含，NO为不包含
 */
- (BOOL)isIncludingEmoji;

/**
 删除包含Emoji的表情

 @return 删除Emoji表情
 */
- (instancetype)removedEmojiString;
@end

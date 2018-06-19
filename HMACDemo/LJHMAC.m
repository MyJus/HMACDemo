//
//  LJHMAC.m
//  HMACDemo
//
//  Created by peony on 2017/2/13.
//  Copyright © 2017年 peony. All rights reserved.
//

#import "LJHMAC.h"

#import <CommonCrypto/CommonHMAC.h>

@implementation LJHMAC

/*
 HMAC都比较类似，调用的方法都是一个，只是传入的参数略有区别
 */

+ (NSString *)LJHMACMD5:(NSString *)data key:(NSString *)key {
    NSData *datas = [data dataUsingEncoding:NSUTF8StringEncoding];
    size_t dataLength = datas.length;
    NSData *keys = [key dataUsingEncoding:NSUTF8StringEncoding];
    size_t keyLength = keys.length;
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgMD5, [keys bytes], keyLength, [datas bytes], dataLength, result);
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i ++) {
        printf("%d ",result[i]);
    }
    printf("\n-------%s-------\n",result);
    //这里需要将result 转base64编码，再传回去
    //为了简单这里没有做
    NSString *base64 = [NSString stringWithUTF8String:result];
    //因为没做base64编码，所以result转NSString 转换失败，是NULL
    return base64;
}

+ (NSString *)LJHMACSHA1:(NSString *)data key:(NSString *)key {
    NSData *datas = [data dataUsingEncoding:NSUTF8StringEncoding];
    size_t dataLength = datas.length;
    NSData *keys = [key dataUsingEncoding:NSUTF8StringEncoding];
    size_t keyLength = keys.length;
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA1, [keys bytes], keyLength, [datas bytes], dataLength, result);
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i ++) {
        printf("%d ",result[i]);
    }
    printf("\n-------%s-------\n",result);
    //这里需要将result 转base64编码，再传回去
    //为了简单这里没有做
    NSString *base64 = [NSString stringWithUTF8String:result];
    //因为没做base64编码，所以result转NSString 转换失败，是NULL
    return base64;
}

+ (NSString *)LJHMACSHA256:(NSString *)data key:(NSString *)key {
    NSData *datas = [data dataUsingEncoding:NSUTF8StringEncoding];
    size_t dataLength = datas.length;
    NSData *keys = [key dataUsingEncoding:NSUTF8StringEncoding];
    size_t keyLength = keys.length;
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA256, [keys bytes], keyLength, [datas bytes], dataLength, result);
    for (int i = 0; i < CC_SHA256_DIGEST_LENGTH; i ++) {
        printf("%d ",result[i]);
    }
    printf("\n-------%s-------\n",result);
    //这里需要将result 转base64编码，再传回去
    //为了简单这里没有做
    NSString *base64 = [NSString stringWithUTF8String:result];
    //因为没做base64编码，所以result转NSString 转换失败，是NULL
    return base64;
}

+ (NSString *)LJHMACSHA512:(NSString *)data key:(NSString *)key {
    NSData *datas = [data dataUsingEncoding:NSUTF8StringEncoding];
    size_t dataLength = datas.length;
    NSData *keys = [key dataUsingEncoding:NSUTF8StringEncoding];
    size_t keyLength = keys.length;
    unsigned char result[CC_SHA512_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA512, [keys bytes], keyLength, [datas bytes], dataLength, result);
    for (int i = 0; i < CC_SHA512_DIGEST_LENGTH; i ++) {
        printf("%d ",result[i]);
    }
    printf("\n-------%s-------\n",result);
    //这里需要将result 转base64编码，再传回去
    //为了简单这里没有做
    NSString *base64 = [NSString stringWithUTF8String:result];
    //因为没做base64编码，所以result转NSString 转换失败，是NULL
    return base64;
}

@end

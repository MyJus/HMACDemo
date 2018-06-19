//
//  LJHMAC.h
//  HMACDemo
//
//  Created by peony on 2017/2/13.
//  Copyright © 2017年 peony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LJHMAC : NSObject

+ (NSString *)LJHMACMD5:(NSString *)data key:(NSString *)key;

+ (NSString *)LJHMACSHA1:(NSString *)data key:(NSString *)key;

+ (NSString *)LJHMACSHA256:(NSString *)data key:(NSString *)key;

+ (NSString *)LJHMACSHA512:(NSString *)data key:(NSString *)key;


@end

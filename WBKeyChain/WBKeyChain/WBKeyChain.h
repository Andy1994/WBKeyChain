//
//  WBKeyChain.h
//  WBKeyChain
//
//  Created by 王文博 on 15/11/21.
//  Copyright © 2015年 王文博. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WBKeyChain : NSObject

+ (void)save:(NSString *)service data:(id)data;

+ (id)load:(NSString *)service;

+ (void)delete:(NSString *)service;

@end

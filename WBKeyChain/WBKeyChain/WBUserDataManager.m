//
//  WBUserDataManager.m
//  WBKeyChain
//
//  Created by 王文博 on 15/11/21.
//  Copyright © 2015年 王文博. All rights reserved.
//

#import "WBUserDataManager.h"
#import "WBKeyChain.h"

@implementation WBUserDataManager

static NSString * const KEY_IN_KEYCHAIN = @"com.wdabo.app.allinfo";
static NSString * const KEY_PASSWORD = @"com.wdabo.app.password";

+ (void)savePassWord:(NSString *)password
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [WBKeyChain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

+ (id)readPassWord
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[WBKeyChain load:KEY_IN_KEYCHAIN];
    return [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
}

+ (void)deletePassWord
{
    [WBKeyChain delete:KEY_IN_KEYCHAIN];
}

@end

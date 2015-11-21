//
//  WBUserDataManager.h
//  WBKeyChain
//
//  Created by 王文博 on 15/11/21.
//  Copyright © 2015年 王文博. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WBUserDataManager : NSObject

/**
 *  @brief  存储密码
 *
 *  @param  Password 密码内容
 */
+ (void)savePassWord:(NSString *)password;

/**
 *  @brief  读取密码
 *
 *  @return 密码内容
 */
+ (id)readPassWord;

/**
 *  @brief  删除密码数据
 */
+ (void)deletePassWord;

@end

//
//  NSDate+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (MMAdd)

- (NSString *)dateStringWithFormatter:(NSString *)format;

#pragma mark - 时间与字符串转换的简便方法

/**
 当前时间
 
 @param format 格式 例:"yyyy-MM-dd"
 @return 特定格式的时间字符串
 */
+ (NSString *)dateStringCurrentTimeWithFormat:(NSString *)format;

/**
 距离现在多久的时间描述 例: @"3分钟前"
 
 @param timestamp 指定时间戳
 @return 距离现在的时间描述字符串
 */
+ (NSString *)dateDescStringWithTimestamp:(NSTimeInterval)timestamp;

/**
 距离现在多久的时间描述,指定超过一年的情况下的格式 例: @"1998年12月1日"
 
 @param timestamp 指定时间戳
 @param format 指定格式
 @return 距离现在的时间描述字符串
 */
+ (NSString *)dateDescStringWithTimestamp:(NSTimeInterval)timestamp
                           longTimeFormat:(NSString *)format;
@end

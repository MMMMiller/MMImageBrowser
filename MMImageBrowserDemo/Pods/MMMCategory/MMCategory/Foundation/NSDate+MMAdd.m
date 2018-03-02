//
//  NSDate+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "NSDate+MMAdd.h"

@implementation NSDate (MMAdd)

- (NSString *)dateStringWithFormatter:(NSString *)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    return [dateFormatter stringFromDate:self];
}

#pragma mark - 时间与字符串转换的简便方法
+ (NSString *)dateStringCurrentTimeWithFormat:(NSString *)format {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    
    return currentTimeString;
}

+ (NSString *)dateDescStringWithTimestamp:(NSTimeInterval)timestamp {
    return [NSDate dateDescStringWithTimestamp:timestamp longTimeFormat:@"YYYY-MM-dd"];
}

+ (NSString *)dateDescStringWithTimestamp:(NSTimeInterval)timestamp longTimeFormat:(NSString *)format {
    NSTimeInterval offset = [NSDate date].timeIntervalSince1970 - timestamp;
    if (offset < 60) {
        return @"刚刚";
    } else if (offset >= 60 && offset < 3600) {
        return [NSString stringWithFormat:@"%d分钟前",(int)offset / 60];
    } else if (offset >= 3600 && offset < 3600 * 24) {
        return [NSString stringWithFormat:@"%d小时前",(int)offset / 3600];
    } else if (offset >= 3600 * 24 && offset < 3600 * 24 * 30) {
        return [NSString stringWithFormat:@"%d天前",(int)offset / (3600 * 24)];
    } else {
        return [[NSDate dateWithTimeIntervalSince1970:timestamp] dateStringWithFormatter:format];
    }
}
@end

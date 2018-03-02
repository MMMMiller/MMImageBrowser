//
//  UIColor+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (MMAdd)

+ (UIColor *)colorWithHex:(NSUInteger)hex;

+ (UIColor *)colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha;

+ (UIColor *)divideLineColor;

+ (UIColor *)lightGrayBackgroundColor;

@end

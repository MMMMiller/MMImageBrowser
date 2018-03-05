//
//  UIColor+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (MMAdd)

+ (UIColor *)mm_colorWithHex:(NSUInteger)hex;

+ (UIColor *)mm_colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha;

+ (UIColor *)mm_divideLineColor;

+ (UIColor *)mm_lightGrayBackgroundColor;

@end

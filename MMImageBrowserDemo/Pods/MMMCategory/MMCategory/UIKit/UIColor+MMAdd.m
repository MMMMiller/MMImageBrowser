//
//  UIColor+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UIColor+MMAdd.h"

@implementation UIColor (MMAdd)

+ (UIColor *)mm_colorWithHex:(NSUInteger)hex {
    CGFloat red, green, blue, alpha;
    
    red = ((CGFloat)((hex >> 16) & 0xFF)) / ((CGFloat)0xFF);
    green = ((CGFloat)((hex >> 8) & 0xFF)) / ((CGFloat)0xFF);
    blue = ((CGFloat)((hex >> 0) & 0xFF)) / ((CGFloat)0xFF);
    alpha = hex > 0xFFFFFF ? ((CGFloat)((hex >> 24) & 0xFF)) / ((CGFloat)0xFF) : 1;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)mm_colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha {
    return [[UIColor mm_colorWithHex:hex] colorWithAlphaComponent:alpha];
}

+ (UIColor *)mm_divideLineColor {
    return [UIColor mm_colorWithHex:0xb2b2b2];
}

+ (UIColor *)mm_lightGrayBackgroundColor {
    return [UIColor mm_colorWithHex:0xf5f5f5];
}

@end

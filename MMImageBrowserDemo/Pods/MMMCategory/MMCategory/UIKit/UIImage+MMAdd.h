//
//  UIImage+MMAdd.h
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/5.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MMAdd)

+ (UIImage *)mm_imageWithColor:(UIColor *)color;

+ (UIImage *)mm_imageWithColor:(UIColor *)color size:(CGSize)size;

- (UIImage *)mm_imageByBlurDark;
@end

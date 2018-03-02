//
//  UILabel+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@interface UILabel (MMAdd)

+ (UILabel *)labelWithTextColor:(UIColor *)color
                           font:(UIFont *)font
                      superView:(UIView *)superView
                     constraint:(void(^)(MASConstraintMaker *make))constraint
                  configHandler:(void(^)(UILabel *label))configHandler;

@end

//
//  UILabel+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UILabel+MMAdd.h"

@implementation UILabel (MMAdd)

+(UILabel *)labelWithTextColor:(UIColor *)color
                          font:(UIFont *)font
                     superView:(UIView *)superView
                    constraint:(void (^)(MASConstraintMaker *))constraint
                 configHandler:(void (^)(UILabel *))configHandler
{
    UILabel *label = [UILabel new];
    label.textColor = color;
    label.font = font;
    [superView addSubview:label];
    [label mas_makeConstraints:constraint];
    if (configHandler) {
        configHandler(label);
    }
    return label;
}

@end

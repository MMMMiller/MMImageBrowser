//
//  UIButton+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@interface UIButton (MMAdd)

+ (UIButton *)buttonWithSuperView:(UIView *)superView
                       constraint:(void(^)(MASConstraintMaker *make))constraint
                    actionHandler:(void(^)(void))actionHandler
                    configHandler:(void(^)(UIButton *button))configHandler;

@end

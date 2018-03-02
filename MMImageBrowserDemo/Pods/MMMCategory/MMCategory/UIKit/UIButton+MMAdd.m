//
//  UIButton+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/26.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UIButton+MMAdd.h"
#import <YYCategories/YYCategories.h>

@implementation UIButton (MMAdd)

+ (UIButton *)buttonWithSuperView:(UIView *)superView
                       constraint:(void (^)(MASConstraintMaker *))constraint
                    actionHandler:(void (^)(void))actionHandler
                    configHandler:(void (^)(UIButton *))configHandler
{
    UIButton *button = [UIButton new];
    [superView addSubview:button];
    [button mas_makeConstraints:constraint];
    
    if (configHandler) {
        configHandler(button);
    }
    
    if (actionHandler) {
        [button addBlockForControlEvents:1<<6 block:^(id sender) {
            actionHandler();
        }];
    }
    
    return button;
}

@end

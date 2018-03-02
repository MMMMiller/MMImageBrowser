//
//  UIView+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MMAdd)

/**
 添加一个长按手势操作
 */
- (void)addLongPressGestureRecognizerWithHandler:(void(^)(id sender))handler;

/**
 添加一个点击手势操作
 */
- (void)addTapGestureRecognizerWithHandler:(void (^)(id sender))handler;

@end

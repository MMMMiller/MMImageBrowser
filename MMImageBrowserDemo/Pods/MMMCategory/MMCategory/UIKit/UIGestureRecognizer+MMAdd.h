//
//  UIGestureRecognizer+MMAdd.h
//  MMCategoryDemo
//
//  Created by xueMingLuan on 2018/3/2.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIGestureRecognizer (MMAdd)

- (instancetype)initWithMMActionBlock:(void (^)(id sender))block;

- (void)mm_addActionBlock:(void (^)(id sender))block;

- (void)mm_removeAllActionBlocks;

@end

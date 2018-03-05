//
//  UIControl+MMAdd.h
//  MMCategoryDemo
//
//  Created by xueMingLuan on 2018/3/2.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (MMAdd)

- (void)mm_addBlockForControlEvents:(UIControlEvents)controlEvents block:(void (^)(id sender))block;

- (void)mm_resetBlockForControlEvents:(UIControlEvents)controlEvents block:(void (^)(id sender))block;

- (void)mm_removeAllBlocksForControlEvents:(UIControlEvents)controlEvents;

@end

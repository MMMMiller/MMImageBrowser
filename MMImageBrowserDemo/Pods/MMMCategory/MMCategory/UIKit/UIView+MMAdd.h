//
//  UIView+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MMAdd)

@property (nonatomic) CGFloat mm_x;
@property (nonatomic) CGFloat mm_y;
@property (nonatomic) CGFloat mm_right;
@property (nonatomic) CGFloat mm_bottom;
@property (nonatomic) CGFloat mm_width;
@property (nonatomic) CGFloat mm_height;
@property (nonatomic) CGFloat mm_centerX;
@property (nonatomic) CGFloat mm_centerY;
@property (nonatomic) CGPoint mm_origin;
@property (nonatomic) CGSize  mm_size;
@property (nonatomic) CGPoint mm_center;

@property (nonatomic, readonly) UIViewController *mm_viewController;

- (UIImage *)mm_snapshotImage;

- (UIImage *)mm_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;
/**
 添加一个长按手势操作
 */
- (void)mm_addLongPressGestureRecognizerWithHandler:(void(^)(id sender))handler;

/**
 添加一个点击手势操作
 */
- (void)mm_addTapGestureRecognizerWithHandler:(void (^)(id sender))handler;

@end

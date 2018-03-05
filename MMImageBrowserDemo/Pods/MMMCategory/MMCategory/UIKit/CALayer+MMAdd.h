//
//  CALayer+MMAdd.h
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/5.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CALayer (MMAdd)

@property (nonatomic) CGFloat mm_x;
@property (nonatomic) CGFloat mm_y;
@property (nonatomic) CGFloat mm_right;
@property (nonatomic) CGFloat mm_bottom;
@property (nonatomic) CGFloat mm_width;
@property (nonatomic) CGFloat mm_height;
@property (nonatomic) CGPoint mm_center; 
@property (nonatomic) CGFloat mm_centerX;
@property (nonatomic) CGFloat mm_centerY;
@property (nonatomic) CGPoint mm_origin;
@property (nonatomic, getter=mm_size, setter=setMm_size:) CGSize mm_size;

@property (nonatomic) CGFloat transformRotation;
@property (nonatomic) CGFloat transformRotationX;
@property (nonatomic) CGFloat transformRotationY;
@property (nonatomic) CGFloat transformRotationZ;
@property (nonatomic) CGFloat transformScale;
@property (nonatomic) CGFloat transformScaleX;
@property (nonatomic) CGFloat transformScaleY;
@property (nonatomic) CGFloat transformScaleZ;
@property (nonatomic) CGFloat transformTranslationX;
@property (nonatomic) CGFloat transformTranslationY;
@property (nonatomic) CGFloat transformTranslationZ;
@property (nonatomic) CGFloat transformDepth;

- (void)mm_addFadeAnimationWithDuration:(NSTimeInterval)duration curve:(UIViewAnimationCurve)curve;

- (void)mm_removePreviousFadeAnimation;

@end

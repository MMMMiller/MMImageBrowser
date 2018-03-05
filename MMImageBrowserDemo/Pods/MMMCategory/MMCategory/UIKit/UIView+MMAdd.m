//
//  UIView+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UIView+MMAdd.h"
#import "UIGestureRecognizer+MMAdd.h"

@implementation UIView (MMAdd)

- (CGFloat)mm_x {
    return self.frame.origin.x;
}

- (void)setMm_x:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)mm_y {
    return self.frame.origin.y;
}

- (void)setMm_y:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)mm_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setMm_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)mm_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setMm_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)mm_width {
    return self.frame.size.width;
}

- (void)setMm_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)mm_height {
    return self.frame.size.height;
}

- (void)setMm_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)mm_centerX {
    return self.center.x;
}

- (void)setMm_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)mm_centerY {
    return self.center.y;
}

- (void)setMm_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGPoint)mm_origin {
    return self.frame.origin;
}

- (void)setMm_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)mm_size {
    return self.frame.size;
}

- (void)setMm_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGPoint)mm_center {
    return CGPointMake(self.frame.origin.x + self.frame.size.width * 0.5,
                       self.frame.origin.y + self.frame.size.height * 0.5);
}

- (UIViewController *)mm_viewController {
    for (UIView *view = self; view; view = view.superview) {
        UIResponder *nextResponder = [view nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

- (void)setMm_center:(CGPoint)center {
    CGRect frame = self.frame;
    frame.origin.x = center.x - frame.size.width * 0.5;
    frame.origin.y = center.y - frame.size.height * 0.5;
    self.frame = frame;
}

- (UIImage *)mm_snapshotImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *snap = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snap;
}

- (UIImage *)mm_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates {
    if (![self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]) {
        return [self mm_snapshotImage];
    }
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:afterUpdates];
    UIImage *snap = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snap;
}
- (void)mm_addLongPressGestureRecognizerWithHandler:(void (^)(id sender))handler
{
    UILongPressGestureRecognizer *recognizer = [[UILongPressGestureRecognizer alloc] initWithMMActionBlock:^(id  _Nonnull sender) {
        if (handler) {
            handler(self);
        }
    }];
    [self addGestureRecognizer:recognizer];
    [self setUserInteractionEnabled:YES];
}

- (void)mm_addTapGestureRecognizerWithHandler:(void (^)(id))handler
{
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithMMActionBlock:^(id  _Nonnull sender) {
        if (handler) {
            handler(self);
        }
    }];
    [self addGestureRecognizer:recognizer];
    [self setUserInteractionEnabled:YES];
}

@end

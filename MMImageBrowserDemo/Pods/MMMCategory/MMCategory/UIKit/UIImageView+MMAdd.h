//
//  UIImageView+MMAdd.h
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/2/28.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

@interface UIImageView (MMAdd)

+ (UIImageView *)imageViewWithSuperView:(UIView *)superView
                             constraint:(void(^)(MASConstraintMaker *make))constraint
                          configHandler:(void (^)(UIImageView *iconView))configHandler;

+ (UIImageView *)imageViewWithImageName:(NSString *)imageName
                              superView:(UIView *)superView
                             constraint:(void(^)(MASConstraintMaker *make))constraint
                          configHandler:(void (^)(UIImageView *iconView))configHandler;

+ (UIImageView *)imageViewWithImage:(UIImage *)image
                          superView:(UIView *)superView
                         constraint:(void (^)(MASConstraintMaker *))constraint
                      configHandler:(void (^)(UIImageView *))configHandler;
@end

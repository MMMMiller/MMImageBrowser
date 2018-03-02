//
//  MMImageBrowser.h
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/1.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMImageBrowser : UIView

/**
 需要显示的图片
 */
@property (nonatomic, readonly) NSArray *imageItems;

/**
 当前显示的图片index
 */
@property (nonatomic, readonly) NSInteger currentPage;

/**
 是否允许用户保存图片, 默认允许
 */
@property (nonatomic, assign) BOOL allowDownload;

/**
 背景虚化,默认开启
 */
@property (nonatomic, assign) BOOL autoBlurBackground;

/**
 初始化

 @param imageItems 需要显示的图片数组
 */
- (instancetype)initWithImageItems:(NSArray *)imageItems;

- (void)presentFromImageView:(UIView *)fromView
                 toContainer:(UIView *)container
                    animated:(BOOL)animated
                  completion:(void (^)(void))completion;

- (void)dismissAnimated:(BOOL)animated
             completion:(void (^)(void))completion;

- (void)dismiss;
@end

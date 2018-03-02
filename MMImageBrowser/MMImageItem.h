//
//  MMImageItem.h
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/1.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MMImageItem : NSObject<NSCopying>
@property (nonatomic, readonly) UIImage *thumbImage;
@property (nonatomic, readonly) BOOL thumbClippedToTop;
@property (nonatomic, strong) UIView *thumbView; ///< thumb image, used for animation position calculation
@property (nonatomic, assign) CGSize largeImageSize;
@property (nonatomic, strong) NSURL *largeImageURL;
- (BOOL)shouldClipToTop:(CGSize)imageSize forView:(UIView *)view;
@end

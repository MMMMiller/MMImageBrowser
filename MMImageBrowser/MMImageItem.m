//
//  MMImageItem.m
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/1.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "MMImageItem.h"
#import <UIKit/UIKit.h>
#import <MMMCategory/MMCategory.h>

@implementation MMImageItem

- (UIImage *)thumbImage {
    if ([_thumbView respondsToSelector:@selector(image)]) {
        return ((UIImageView *)_thumbView).image;
    }
    return nil;
}

- (BOOL)thumbClippedToTop {
    if (_thumbView) {
        if (_thumbView.layer.contentsRect.size.height < 1) {
            return YES;
        }
    }
    return NO;
}

- (BOOL)shouldClipToTop:(CGSize)imageSize forView:(UIView *)view {
    if (imageSize.width < 1 || imageSize.height < 1) return NO;
    if (view.mm_width < 1 || view.mm_height < 1) return NO;
    return imageSize.height / imageSize.width > view.mm_width / view.mm_height;
}

- (id)copyWithZone:(NSZone *)zone {
    MMImageItem *item = [self.class new];
    return item;
}
@end

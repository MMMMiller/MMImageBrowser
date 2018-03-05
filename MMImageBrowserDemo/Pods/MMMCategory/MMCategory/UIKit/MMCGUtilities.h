//
//  MMCGUtilities.h
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/5.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static inline CGSize MMCGSizePixelCeil(CGSize size) {
    CGFloat scale = [UIScreen mainScreen].scale;
    return CGSizeMake(ceil(size.width * scale) / scale,
                      ceil(size.height * scale) / scale);
}

@interface MMCGUtilities : NSObject

@end

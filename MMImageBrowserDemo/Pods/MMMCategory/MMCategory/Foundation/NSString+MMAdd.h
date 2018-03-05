//
//  NSString+MMAdd.h
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/5.
//  Copyright © 2018年 mille. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (MMAdd)

- (CGSize)mm_sizeForFont:(UIFont *)font
                    size:(CGSize)size
                    mode:(NSLineBreakMode)lineBreakMode;

@end

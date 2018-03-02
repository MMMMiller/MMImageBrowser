//
//  UIApplication+MMAdd.m
//  MMKitDemo
//
//  Created by xueMingLuan on 2018/3/1.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UIApplication+MMAdd.h"

@implementation UIApplication (MMAdd)

+ (void)openUrlString:(NSString *)urlString {
    if (!urlString) {
        return;
    }

    NSURL *myURL = [NSURL URLWithString:urlString];
    if ([[UIApplication sharedApplication] canOpenURL:myURL]) {
        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:myURL
                                               options:@{}
                                     completionHandler:nil];
        } else {
            [[UIApplication sharedApplication] openURL:myURL];
        }
    }
}

@end

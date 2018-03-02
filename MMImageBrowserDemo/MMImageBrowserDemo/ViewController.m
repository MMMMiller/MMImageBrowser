//
//  ViewController.m
//  MMImageBrowserDemo
//
//  Created by xueMingLuan on 2018/3/1.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "ViewController.h"
#import "MMImageBrowser.h"
#import <Masonry.h>

@interface ViewController () {
    UIImageView *_img;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _img = [UIImageView new];
    _img.image = [UIImage imageNamed:@"img.jpeg"];
    [self.view addSubview:_img];
    [_img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *imgs = @[@"http://upload-images.jianshu.io/upload_images/1426854-b20dc3e4aefd878f.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
                      @"http://upload-images.jianshu.io/upload_images/1426854-ae96c202843dcbce.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
                      @"http://upload-images.jianshu.io/upload_images/1426854-88c1ec49d2f51faf.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
                      @"http://upload-images.jianshu.io/upload_images/1426854-b8661d64f8ec160c.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240",
                      @"http://upload-images.jianshu.io/upload_images/1426854-72ff92aeeb638184.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
    NSMutableArray *items = [NSMutableArray array];
    for (int i =0; i < imgs.count; i++) {
        MMImageItem *item = [MMImageItem new];
        NSString *urlStr = imgs[i];
        item.largeImageURL = [NSURL URLWithString:urlStr];
        [items addObject:item];
    }
    
    MMImageBrowser *browser = [[MMImageBrowser alloc] initWithImageItems:items];
    browser.autoBlurBackground = NO;
    [browser presentFromImageView:_img toContainer:[UIApplication sharedApplication].keyWindow animated:YES completion:nil];
}

@end

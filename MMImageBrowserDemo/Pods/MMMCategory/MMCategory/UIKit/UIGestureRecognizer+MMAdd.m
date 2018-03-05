//
//  UIGestureRecognizer+MMAdd.m
//  MMCategoryDemo
//
//  Created by xueMingLuan on 2018/3/2.
//  Copyright © 2018年 mille. All rights reserved.
//

#import "UIGestureRecognizer+MMAdd.h"
#import <objc/runtime.h>
static const int block_key;

@interface _MMUIGestureRecognizerBlockTarget : NSObject

@property (nonatomic, copy) void (^block)(id sender);

- (id)initWithBlock:(void (^)(id sender))block;
- (void)invoke:(id)sender;

@end

@implementation _MMUIGestureRecognizerBlockTarget

- (id)initWithBlock:(void (^)(id sender))block{
    self = [super init];
    if (self) {
        _block = [block copy];
    }
    return self;
}

- (void)invoke:(id)sender {
    if (_block) _block(sender);
}

@end

@implementation UIGestureRecognizer (MMAdd)

- (instancetype)initWithMMActionBlock:(void (^)(id sender))block {
    self = [self init];
    [self mm_addActionBlock:block];
    return self;
}

- (void)mm_addActionBlock:(void (^)(id sender))block {
    _MMUIGestureRecognizerBlockTarget *target = [[_MMUIGestureRecognizerBlockTarget alloc] initWithBlock:block];
    [self addTarget:target action:@selector(invoke:)];
    NSMutableArray *targets = [self _mm_allUIGestureRecognizerBlockTargets];
    [targets addObject:target];
}

- (void)mm_removeAllActionBlocks{
    NSMutableArray *targets = [self _mm_allUIGestureRecognizerBlockTargets];
    [targets enumerateObjectsUsingBlock:^(id target, NSUInteger idx, BOOL *stop) {
        [self removeTarget:target action:@selector(invoke:)];
    }];
    [targets removeAllObjects];
}

- (NSMutableArray *)_mm_allUIGestureRecognizerBlockTargets {
    NSMutableArray *targets = objc_getAssociatedObject(self, &block_key);
    if (!targets) {
        targets = [NSMutableArray array];
        objc_setAssociatedObject(self, &block_key, targets, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return targets;
}

@end

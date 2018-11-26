//
//  EmptyAdapter.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/26.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "EmptyAdapter.h"

@interface EmptyAdapter ()
@property (nonatomic, strong) UILabel *textLabel;
@end

@implementation EmptyAdapter

- (instancetype)init {
    if (self = [super init]) {
        [self _initSubviews];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self _initSubviews];
    }
    return self;
}

#pragma mark - Private
- (void)_initSubviews {
    [self addSubview:self.textLabel];
}

#pragma mark - Lazy
- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _textLabel.text = @"This is Empty!";
        _textLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _textLabel;
}


@end

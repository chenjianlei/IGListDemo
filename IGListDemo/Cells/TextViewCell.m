//
//  TextViewCell.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "TextViewCell.h"

@interface TextViewCell ()
@property (nonatomic, strong) UILabel *contentText;
@end

@implementation TextViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self _initSubviews];
    }
    return self;
}

#pragma mark - Private
- (void)_initSubviews {
    [self.contentView addSubview:self.contentText];
}

#pragma mark - Lazy
- (UILabel *)contentText {
    if (!_contentText) {
        _contentText = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        _contentText.text = @"只是一个测试";
    }
    return _contentText;
}
@end

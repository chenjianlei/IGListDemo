//
//  ImageViewCell.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "ImageViewCell.h"

@interface ImageViewCell ()
@property (nonatomic, strong) UIImageView *contentImageView;
@end

@implementation ImageViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self _initSubviews];
    }
    return self;
}

- (void)_initSubviews {
    [self.contentView addSubview:self.contentImageView];
}

#pragma mark - Lazy
- (UIImageView *)contentImageView {
    if (!_contentImageView) {
        _contentImageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        _contentImageView.backgroundColor = [UIColor redColor];
    }
    return _contentImageView;
}
@end

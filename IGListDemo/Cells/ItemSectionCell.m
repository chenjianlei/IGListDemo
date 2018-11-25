//
//  ItemSectionCell.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "ItemSectionCell.h"

@implementation ItemSectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.collectionView];
    }
    return self;
}

#pragma mark - System
- (void)layoutSubviews {
    [super layoutSubviews];
    self.collectionView.frame = self.contentView.bounds;
}

#pragma mark - Private
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.alwaysBounceVertical = NO;
        _collectionView.alwaysBounceHorizontal = NO;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
    }
    return _collectionView;
}

@end

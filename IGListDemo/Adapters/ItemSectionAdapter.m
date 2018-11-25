//
//  ItemSectionAdapter.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "ItemSectionAdapter.h"
#import "ImageViewCell.h"

@implementation ItemSectionAdapter

- (instancetype)init {
    if (self = [super init]) {
        self.inset = UIEdgeInsetsMake(0, 0, 0, 10);
    }
    return self;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(100, 100);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    ImageViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:ImageViewCell.class forSectionController:self atIndex:index];
    NSLog(@"cell -- %ld", index);
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"horizontal -- %ld", index);
}

@end

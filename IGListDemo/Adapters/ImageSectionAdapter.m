//
//  ImageSectionAdapter.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "ImageSectionAdapter.h"
#import "ImageViewCell.h"

@interface ImageSectionAdapter ()

@end

@implementation ImageSectionAdapter

- (NSInteger)numberOfItems {
    return 1;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 100);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    ImageViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:ImageViewCell.class forSectionController:self atIndex:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"image -- %ld", index);
}

@end

//
//  ListSectionAdapter.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "ListSectionAdapter.h"
#import "TextViewCell.h"

@implementation ListSectionAdapter

- (NSInteger)numberOfItems {
    return 10;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 44);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    TextViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:TextViewCell.class forSectionController:self atIndex:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"list -- %ld", index);
}

- (BOOL)canMoveItemAtIndex:(NSInteger)index {
    return (index == 3);
}

@end

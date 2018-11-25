//
//  TextSectionAdapter.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "TextSectionAdapter.h"
#import "TextViewCell.h"

@interface TextSectionAdapter ()

@end

@implementation TextSectionAdapter

- (NSInteger)numberOfItems {
    return 1;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 44);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    TextViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:TextViewCell.class forSectionController:self atIndex:index];
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"text -- %ld", index);
}

@end

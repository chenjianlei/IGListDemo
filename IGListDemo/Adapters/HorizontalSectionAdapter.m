//
//  HorizontalSectionAdapter.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "HorizontalSectionAdapter.h"
#import "ItemSectionAdapter.h"
#import <IGListKit.h>
#import "ItemSectionCell.h"

@interface HorizontalSectionAdapter ()
<
    IGListAdapterDataSource
>
@property (nonatomic, strong) IGListAdapter *adapter;
@property (nonatomic, strong) IGListAdapterUpdater *adapterUpdater;
@end

@implementation HorizontalSectionAdapter

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(self.collectionContext.containerSize.width, 100);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    ItemSectionCell *cell = [self.collectionContext dequeueReusableCellOfClass:ItemSectionCell.class forSectionController:self atIndex:index];
    self.adapter.collectionView = cell.collectionView;
    return cell;
}

#pragma mark - <IGListAdapterDataSource>
- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    ItemSectionAdapter *vc = [ItemSectionAdapter new];
    return vc;
}

- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

#pragma mark - Lazy
- (IGListAdapter *)adapter {
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc] initWithUpdater:self.adapterUpdater viewController:self.viewController];
        _adapter.dataSource = self;
    }
    return _adapter;
}

- (IGListAdapterUpdater *)adapterUpdater {
    if (!_adapterUpdater) {
        _adapterUpdater = [IGListAdapterUpdater new];
    }
    return _adapterUpdater;
}

@end

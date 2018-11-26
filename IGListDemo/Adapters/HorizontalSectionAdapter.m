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
#import "EmptyAdapter.h"

@interface HorizontalSectionAdapter ()
<
    IGListAdapterDataSource
>
@property (nonatomic, strong) IGListAdapter *adapter;
@property (nonatomic, strong) IGListAdapterUpdater *adapterUpdater;
@property (nonatomic, strong) EmptyAdapter *emptyView;
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
//    return @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    return @[];
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    UILabel *text = [UILabel new];
    text.text = @"This is Empty!";
    text.textAlignment = NSTextAlignmentCenter;
    return text;
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

- (EmptyAdapter *)emptyView {
    if (!_emptyView) {
        _emptyView = [[EmptyAdapter alloc] initWithFrame:CGRectMake(0, 0, self.collectionContext.containerSize.width, self.collectionContext.containerSize.height)];
    }
    return _emptyView;
}

@end

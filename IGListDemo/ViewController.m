//
//  ViewController.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/25.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "ViewController.h"
#import <IGListKit.h>
#import "TextSectionAdapter.h"
#import "ImageSectionAdapter.h"
#import "ListSectionAdapter.h"
#import "HorizontalSectionAdapter.h"

@interface ViewController ()
<
    IGListAdapterDataSource,
    IGListAdapterDelegate
>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) IGListAdapterUpdater *adapterUpdater;
@property (nonatomic, strong) IGListAdapter *adapter;
@property (nonatomic, strong) NSMutableArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _initSubviews];
}

#pragma mark - Private
- (void)_initSubviews {
    [self.view addSubview:self.collectionView];
    self.adapter.collectionView = self.collectionView;
    
    [self _layout];
}

- (void)_layout {
    self.collectionView.frame = self.view.bounds;
}

#pragma mark - <IGListAdapterDataSource>
- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return @[@"1", @"2", @"3", @"4"];
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    IGListStackedSectionController *vc = [[IGListStackedSectionController alloc] initWithSectionControllers:self.datas];
    return vc;
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

#pragma mark - <IGListAdapterDelegate>
- (void)listAdapter:(IGListAdapter *)listAdapter willDisplayObject:(id)object atIndex:(NSInteger)index {
//    NSLog(@"will display");
}

- (void)listAdapter:(IGListAdapter *)listAdapter didEndDisplayingObject:(id)object atIndex:(NSInteger)index {
//    NSLog(@"did end display");
}

#pragma mark - Lazy
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionView.backgroundColor = [UIColor clearColor];
    }
    return _collectionView;
}

- (IGListAdapter *)adapter {
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc] initWithUpdater:self.adapterUpdater viewController:self workingRangeSize:1];
        _adapter.dataSource = self;
        _adapter.delegate = self;
    }
    return _adapter;
}

- (IGListAdapterUpdater *)adapterUpdater {
    if (!_adapterUpdater) {
        _adapterUpdater = [IGListAdapterUpdater new];
    }
    return _adapterUpdater;
}

- (NSMutableArray *)datas {
    if (!_datas) {
        _datas = [NSMutableArray array];
        [_datas addObject:[TextSectionAdapter new]];
        [_datas addObject:[ImageSectionAdapter new]];
        [_datas addObject:[ListSectionAdapter new]];
        [_datas addObject:[HorizontalSectionAdapter new]];
    }
    return _datas;
}
@end

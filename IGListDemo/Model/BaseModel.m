//
//  BaseModel.m
//  IGListDemo
//
//  Created by 陈建蕾 on 2018/11/27.
//  Copyright © 2018年 陈建蕾. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(id<IGListDiffable>)object {
    if (self == object) {
        return YES;
    } else if (self == nil || object == nil) {
        return NO;
    }
    
    return YES;
}

@end

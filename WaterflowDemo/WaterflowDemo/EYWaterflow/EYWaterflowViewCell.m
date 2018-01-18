//
//  EYWaterflowViewCell.m
//  瀑布流
//
//  Created by lieryang on 2018/1/17.
//  Copyright © 2018年 cn.com.eastsoft.www. All rights reserved.
//
#import "EYWaterflowViewCell.h"

@interface EYWaterflowViewCell()

@property (nonatomic, readwrite, copy) NSString *reuseIdentifier;

@end

@implementation EYWaterflowViewCell

- (__kindof EYWaterflowViewCell *)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super init];
    if (self) {
        self.reuseIdentifier = reuseIdentifier;
    }
    return self;
}

@end

//
//  ViewController.m
//  WaterflowDemo
//
//  Created by gujiabin on 2018/1/18.
//  Copyright © 2018年 cn.com.eastsoft.www. All rights reserved.
//

#import "ViewController.h"
#import "EYWaterflowView.h"
#include "EYWaterflowViewCell.h"

@interface ViewController () <EYWaterflowViewDataSource, EYWaterflowViewDelegate>

@property (weak, nonatomic) EYWaterflowView * waterflowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    EYWaterflowView * waterflowView = [[EYWaterflowView alloc] initWithFrame:self.view.bounds];
    waterflowView.dataSource = self;
    waterflowView.delegate = self;
    [self.view addSubview:waterflowView];
    self.waterflowView = waterflowView;
}

#pragma mark - EYWaterflowViewDataSource(必须实现下面两个方法)
- (NSUInteger)numberOfCellsInWaterflowView:(EYWaterflowView *)waterflowView {
    return 100;
}

- (EYWaterflowViewCell *)waterflowView:(EYWaterflowView *)waterflowView cellAtIndex:(NSUInteger)index {
    static NSString * cellID = @"cellID";

    EYWaterflowViewCell * cell = [waterflowView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[EYWaterflowViewCell alloc] initWithReuseIdentifier:cellID];

        cell.backgroundColor = [UIColor redColor];
    }

    return cell;
}

#pragma mark - EYWaterflowViewDelegate(可以不实现)
- (CGFloat)waterflowView:(EYWaterflowView *)waterflowView heightAtIndex:(NSUInteger)index
{
    return 100 + arc4random_uniform(100);
}

@end

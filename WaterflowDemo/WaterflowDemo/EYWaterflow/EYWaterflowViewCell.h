//
//  EYWaterflowViewCell.h
//  瀑布流
//
//  Created by lieryang on 2018/1/17.
//  Copyright © 2018年 cn.com.eastsoft.www. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EYWaterflowViewCell : UIView

//重用标识符
@property (nonatomic, readonly, copy) NSString *reuseIdentifier;

- (__kindof EYWaterflowViewCell *)initWithReuseIdentifier:(NSString *)reuseIdentifier;

@end

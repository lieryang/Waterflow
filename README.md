# Waterflow
仿照系统的UITableView组件,创建一个瀑布流样式的布局组件(EYWaterfolwView)

具体使用
### 第一步: 导入头文件
```
#import "EYWaterflowView.h"
#include "EYWaterflowViewCell.h"
```

### 第二步: 创建组件添加到self.view中
```
  EYWaterflowView * waterflowView = [[EYWaterflowView alloc] initWithFrame:self.view.bounds];
  waterflowView.dataSource = self;
  waterflowView.delegate = self;
  [self.view addSubview:waterflowView];
```
  
### 第三步: 实现dataSource中的两个方法
```
#pragma mark - EYWaterflowViewDataSource(必须实现下面两个方法)
- (NSUInteger)numberOfCellsInWaterflowView:(EYWaterflowView *)waterflowView
{
    return 100;
}

- (EYWaterflowViewCell *)waterflowView:(EYWaterflowView *)waterflowView cellAtIndex:(NSUInteger)index
{
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
```

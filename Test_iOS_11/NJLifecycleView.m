//
//  NJLifecycleView.m
//  Test_iOS_11
//
//  Created by NickJackson on 2017/8/31.
//  Copyright © 2017年 NickJackson. All rights reserved.
//

#import "NJLifecycleView.h"


@implementation NJLifecycleView

- (void)dealloc
{
    NSLog(@"njlog: %s", __FUNCTION__);
}
- (instancetype)init
{
    NSLog(@"njlog: %s", __FUNCTION__);
    self = [super init];
    if (self) {
        UIView *sub1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        sub1.backgroundColor = [UIColor purpleColor];
        [self addSubview:sub1];
        [sub1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
    }
    NSLog(@"njlog: %s", __FUNCTION__);
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    NSLog(@"njlog: %s", __FUNCTION__);
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    NSLog(@"njlog: %s", __FUNCTION__);
    return self;
}
- (void)awakeFromNib
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super awakeFromNib];
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)layoutSubviews
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super layoutSubviews];
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super willMoveToSuperview:newSuperview];
    NSLog(@"njlog: %s", __FUNCTION__);
}
- (void)didMoveToSuperview
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super didMoveToSuperview];
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)willMoveToWindow:(UIWindow *)newWindow
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super willMoveToWindow:newWindow];
    NSLog(@"njlog: %s", __FUNCTION__);
}
- (void)didMoveToWindow
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super didMoveToWindow];
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)removeFromSuperview
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super removeFromSuperview];
    NSLog(@"njlog: %s", __FUNCTION__);
}
//- (void)drawRect:(CGRect)rect
//{
//    [super drawRect:rect];
//    NSLog(@"njlog: %s", __FUNCTION__);
//}

@end

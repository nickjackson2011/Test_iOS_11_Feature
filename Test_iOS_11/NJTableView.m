//
//  NJTableView.m
//  Test_iOS_11
//
//  Created by NickJackson on 2017/8/25.
//  Copyright © 2017年 NickJackson. All rights reserved.
//

#import "NJTableView.h"

@implementation NJTableView

- (void)setContentInset:(UIEdgeInsets)contentInset
{
    [super setContentInset:contentInset];
}
//-[NJTableView setContentOffset:] at /Users/NickJackson/Desktop/Test_iOS_11/Test_iOS_11/NJTableView.m:20
//_UIScrollViewAdjustForOverlayInsetsChangeIfNecessary ()
- (void)setContentOffset:(CGPoint)contentOffset
{
    [super setContentOffset:contentOffset];
}

@end

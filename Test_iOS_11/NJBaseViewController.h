//
//  NJBaseViewController.h
//  Test_iOS_11
//
//  Created by NickJackson on 2017/8/25.
//  Copyright © 2017年 NickJackson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "NJTableView.h"



@interface NJBaseViewController : UIViewController
@property (nonatomic, strong) UITableView *tableView;
@end

@interface NJBaseViewController(private) <UITableViewDataSource, UITableViewDelegate>

@end

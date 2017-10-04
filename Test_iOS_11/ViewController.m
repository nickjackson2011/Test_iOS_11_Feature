//
//  ViewController.m
//  Test_iOS_11
//
//  Created by NickJackson on 2017/8/25.
//  Copyright © 2017年 NickJackson. All rights reserved.
//

#import "ViewController.h"

//#import "NJLargeTitleStyleViewController.h"
//#import "NJColorAssetsViewController.h"

@interface ViewController () 


@property (nonatomic, strong) NSArray *dataTitleArray;
@property (nonatomic, strong) NSArray *dataClassArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataTitleArray = @[@"LargeTitle", @"NamedColor", @"SwipeCell", @"TurnOffDefaultScrollViewAdjust", @"SearchVC", @"Lifecycle"];
    self.dataClassArray = @[@"NJLargeTitleStyleViewController", @"NJColorAssetsViewController", @"NJSwipeCellViewController", @"NJSrollViewAdjustInsetViewController", @"NJSearchVCViewController", @"NJLifecycleViewController"];
    
    NJTableView *tableView = [[NJTableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [UIColor lightGrayColor];
    
    tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    
    [self.view addSubview:tableView];
    self.tableView = tableView;
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - ------------------Delegate------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataTitleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"njcell"];
    
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld %@", (long)indexPath.row, self.dataTitleArray[indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Class class = NSClassFromString([self.dataClassArray objectAtIndex:indexPath.row]);
    UIViewController *rootVC = [[class alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

//// 左右滑动
//- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIContextualAction *action = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:@"leadingAction" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
//
//    }];
//    action.backgroundColor = [UIColor greenColor];
//    UISwipeActionsConfiguration *config = [UISwipeActionsConfiguration configurationWithActions:@[action]];
//
//    return config;
//}
//- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIContextualAction *action = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleDestructive title:@"tailingAction" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
//
//    }];
//    action.backgroundColor = [UIColor blueColor];
//    UISwipeActionsConfiguration *config = [UISwipeActionsConfiguration configurationWithActions:@[action]];
//    return config;
//}

@end

//
//  NJDragAndDropViewController.m
//  Test_iOS_11
//
//  Created by NickJackson on 2017/8/25.
//  Copyright © 2017年 NickJackson. All rights reserved.
//

#import "NJDragAndDropViewController.h"

@interface NJDragAndDropViewController ()

@property (nonatomic, strong) UIView *target;

@end

@implementation NJDragAndDropViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Test drag and drop";
    label.font = [UIFont systemFontOfSize:20.f];
    [self.view addSubview:label];
    self.target = label;
    
    UIDragInteraction* drag = [[UIDragInteraction alloc] initWithDelegate:self];
    [label addInteraction:drag];
    label.userInteractionEnabled = YES;
}

#pragma mark - ------------------UIDragInteractionDelegate------------------
- (NSArray<UIDragItem *> *)dragInteraction:(UIDragInteraction *)interaction itemsForBeginningSession:(id<UIDragSession>)session
{
    NSArray* items = [self itemsForSession:session];
    return items;
}
- (NSArray*)itemsForSession:(id<UIDragSession>)session
{
//    NSItemProvider* provider = [[NSItemProvider alloc] initWithObject:_item];
//    UIDragItem* item = [[UIDragItem alloc] initWithItemProvider:provider];
//    item.localObject = _item;
//
//    return @[item];
    return nil;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

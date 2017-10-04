//
//  NJLifecycleViewController.m
//  Test_iOS_11
//
//  Created by NickJackson on 2017/8/31.
//  Copyright © 2017年 NickJackson. All rights reserved.
//

#import "NJLifecycleViewController.h"
#import "NJLifecycleView.h"

@interface NJLifecycleViewController ()
{
    NJLifecycleView *lifecycleView_;
}
@end

@implementation NJLifecycleViewController

- (void)dealloc
{
    lifecycleView_ = nil;
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (instancetype)init
{
    NSLog(@"njlog: %s", __FUNCTION__);
    self = [super init];
    if (self) {
        
    }
    NSLog(@"njlog: %s", __FUNCTION__);
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"njlog: %s", __FUNCTION__);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    NSLog(@"njlog: %s", __FUNCTION__);
    return self;
}

- (void)loadView
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super loadView];
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)viewDidLoad {
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    if (!lifecycleView_) {
        lifecycleView_ = [[NJLifecycleView alloc] init];
        lifecycleView_.backgroundColor = [UIColor grayColor];
        [lifecycleView_ setFrame:CGRectMake(0, 100, 100, 100)];
    }
    [self.view addSubview:lifecycleView_];
    
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)viewWillLayoutSubviews
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewWillLayoutSubviews];
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewDidLayoutSubviews];
    
    NSLog(@"njlog: %s", __FUNCTION__);
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewWillAppear:animated];
    NSLog(@"njlog: %s", __FUNCTION__);
}
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewDidAppear:animated];
    NSLog(@"njlog: %s\n---\n", __FUNCTION__);
    
    [lifecycleView_ setFrame:CGRectMake(0, 100, 200, 200)];
    lifecycleView_.backgroundColor = [UIColor blueColor];
}
- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewWillDisappear:animated];
    NSLog(@"njlog: %s", __FUNCTION__);
}
- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"njlog: %s", __FUNCTION__);
    [super viewDidDisappear:animated];
    NSLog(@"njlog: %s", __FUNCTION__);
    
}

- (void)didReceiveMemoryWarning {
    NSLog(@"njlog: %s", __FUNCTION__);
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"njlog: %s", __FUNCTION__);
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

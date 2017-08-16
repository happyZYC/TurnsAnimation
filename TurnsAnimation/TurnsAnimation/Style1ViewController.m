//
//  Style1ViewController.m
//  TurnsAnimation
//
//  Created by 赵永昌 on 2017/8/16.
//  Copyright © 2017年 chengzhen. All rights reserved.
//

#import "Style1ViewController.h"
#import "CFCoverFlowView.h"
@interface Style1ViewController ()<CFCoverFlowViewDelegate>

@end

@implementation Style1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CFCoverFlowView *coverFlowView2 = [[CFCoverFlowView alloc] initWithFrame:CGRectMake(0, 120, [UIScreen mainScreen].bounds.size.width, 300)];
    coverFlowView2.backgroundColor = [UIColor groupTableViewBackgroundColor];
    coverFlowView2.pageItemWidth = 200;
    coverFlowView2.pageItemCoverWidth = 10.0;
    coverFlowView2.pageItemHeight = 250;
    coverFlowView2.pageItemCornerRadius = 5.0;
    coverFlowView2.delegate = self;
    [coverFlowView2 setPageItemsWithImageNames:@[@"1", @"2", @"3", @"4", @"5", @"6",@"7",@"8"]];
    [self.view addSubview:coverFlowView2];
}

- (void)coverFlowView:(CFCoverFlowView *)coverFlowView didScrollPageItemToIndex:(NSInteger)index
{
    NSLog(@"didScrollPageItemToIndex >>> %@", @(index));
    
}

- (void)coverFlowView:(CFCoverFlowView *)coverFlowView didSelectPageItemAtIndex:(NSInteger)index
{
    NSLog(@"didSelectPageItemAtIndex >>> %@", @(index));
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

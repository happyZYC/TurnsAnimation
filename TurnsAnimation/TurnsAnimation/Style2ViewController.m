//
//  Style2ViewController.m
//  TurnsAnimation
//
//  Created by 赵永昌 on 2017/8/16.
//  Copyright © 2017年 chengzhen. All rights reserved.
//

#import "Style2ViewController.h"
#import "LQScrollView.h"
@interface Style2ViewController ()

@end

@implementation Style2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //只能设置5张图片
    NSMutableArray * arr = [NSMutableArray arrayWithObjects:@"",@"",@"",@"",@"", nil];
    LQScrollView * lq = [[LQScrollView alloc]initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, 300) imageArray:arr];
    [self.view addSubview:lq];
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

//
//  ViewController.m
//  TurnsAnimation
//
//  Created by 赵永昌 on 2017/8/16.
//  Copyright © 2017年 chengzhen. All rights reserved.
//

#import "ViewController.h"
#import "Style1ViewController.h"
#import "Style2ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"动画方式";
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor darkGrayColor];
    button1.frame = CGRectMake((screenWidth - 100)/2, (screenHeight - 90)/2, 100, 40);
    [button1 setTitle:@"实现方式一" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(animationStyle:) forControlEvents:UIControlEventTouchUpInside];
    button1.tag = 1;
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.backgroundColor = [UIColor darkGrayColor];
    button2.frame = CGRectMake((screenWidth - 100)/2, CGRectGetMaxY(button1.frame) + 10, 100, 40);
    [button2 setTitle:@"实现方式二" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(animationStyle:) forControlEvents:UIControlEventTouchUpInside];
    button2.tag = 2;
    [self.view addSubview:button2];
    
}
- (void)animationStyle:(UIButton *)sender
{
    if (sender.tag == 1) {
        Style1ViewController *vc = [[Style1ViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else{
        Style2ViewController *vc = [[Style2ViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

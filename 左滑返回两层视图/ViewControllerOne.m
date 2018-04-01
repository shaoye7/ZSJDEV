//
//  ViewControllerOne.m
//  左滑返回两层视图
//
//  Created by zhao on 2018/3/30.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"

@interface ViewControllerOne ()

@end

@implementation ViewControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.navigationItem.title = @"第一页";
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 200, 100, 100);
    [btn setTitle:@"跳转下一页" forState: UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pushView) forControlEvents:UIControlEventTouchUpInside];
    
    
}
- (void)pushView{
    
    ViewControllerTwo *two = [[ViewControllerTwo alloc] init];
    [self.navigationController pushViewController:two animated:YES];
    
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

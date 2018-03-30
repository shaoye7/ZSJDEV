//
//  ViewControllerTwo.m
//  左滑返回两层视图
//
//  Created by zhao on 2018/3/30.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import "ViewControllerTwo.h"
#import "ViewControllerThree.h"

@interface ViewControllerTwo ()

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.title = @"第二页";

    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor yellowColor];
    btn.frame = CGRectMake(100, 200, 100, 100);
    [btn setTitle:@"跳转下一页" forState: UIControlStateNormal];

    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pushView) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)pushView{
    
    ViewControllerThree *three = [[ViewControllerThree alloc] init];
    
    NSMutableArray *viewControllers = [self.navigationController.viewControllers mutableCopy];
    
    [viewControllers removeObject:self];
    
    [viewControllers addObject:three];
    [self.navigationController setViewControllers:viewControllers animated:YES];
    
    
//    [self.navigationController pushViewController:three animated:YES];
    
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

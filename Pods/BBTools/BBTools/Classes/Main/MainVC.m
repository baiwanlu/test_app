//
//  MainVC.m
//  test_app
//
//  Created by 小小白 on 2018/7/24.
//  Copyright © 2018年 小小白. All rights reserved.
//

#import "MainVC.h"
#import <MGJRouter/MGJRouter.h>

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    self.view.backgroundColor = [UIColor redColor];
}
// 在load方法中自动注册，在主工程中不用写任何代码。
+ (void)load {
    [MGJRouter registerURLPattern:@"CTB://Main/PushMainVC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        
        MainVC *homePageVC = [[MainVC alloc] init];
        [navigationVC pushViewController:homePageVC animated:YES];
    }];
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

//
//  ViewController.m
//  test_app
//
//  Created by 小小白 on 2018/7/24.
//  Copyright © 2018年 小小白. All rights reserved.
//

#import "ViewController.h"
#import <MGJRouter/MGJRouter.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)homeClick:(UIButton *)sender {
  
    [MGJRouter openURL:@"CTB://Main/PushMainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController}
            completion:nil];
}

- (IBAction)otherClick:(UIButton *)sender {
//
//    OtherVC *otherVC = [[OtherVC alloc]init];
//    [self.navigationController pushViewController:otherVC animated:YES];
}


@end

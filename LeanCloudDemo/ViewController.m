//
//  ViewController.m
//  LeanCloudDemo
//
//  Created by perfay on 2018/9/3.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import <AVOSCloud/AVOSCloud.h>
#import "ControlManager.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    AVUser *user = [AVUser user];
//    user.username = @"123456";
//    user.password = @"aaaa";
//    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
//        NSLog(@"error");
//    }];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if([[ControlManager sharInstance] vipIsValidWith:@"13675158507"]){
        NSLog(@"会员有效");
    }
    else{
        NSLog(@"会员过期");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

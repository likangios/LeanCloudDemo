//
//  ViewController.m
//  LeanCloudDemo
//
//  Created by perfay on 2018/9/3.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import <AVOSCloud/AVOSCloud.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AVUser *user = [AVUser user];
    user.username = @"123456";
    user.password = @"aaaa";
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        NSLog(@"error");
    }];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSString *uuid =  [UIDevice currentDevice].identifierForVendor.UUIDString;
    NSError *error;
    AVUser *user = [AVUser logInWithUsername:@"123456" password:@"aaaa" error:&error];
    [user refresh];
    NSLog(@"user");

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  CHGViewController.m
//  FaceDetectSDK
//
//  Created by chglog on 11/01/2024.
//  Copyright (c) 2024 chglog. All rights reserved.
//

#import "CHGViewController.h"
#import "MBProgressHUD.h"
#import "TestApiObject.h"

@interface CHGViewController ()

@end

@implementation CHGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [clickBtn setTitle:@"点击测试公开方法" forState:UIControlStateNormal];
    [clickBtn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    clickBtn.frame = CGRectMake(100, 200, 200, 50);
    clickBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:clickBtn];
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
}


- (void)test{
    TestApiObject *obj = [[TestApiObject alloc] init];
    [obj testMethod];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

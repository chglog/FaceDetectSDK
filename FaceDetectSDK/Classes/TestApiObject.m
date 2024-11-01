//
//  TestApiObject.m
//  FaceDetectSDK
//
//  Created by 陈年老根 on 2024/11/1.
//

#import "TestApiObject.h"
#import <MBProgressHUD/MBProgressHUD.h>

@implementation TestApiObject

-(void)testMethod{

    NSLog(@"真的调用了！");
    UIWindow *currentWindow = [[UIApplication sharedApplication] keyWindow];
    [MBProgressHUD showHUDAddedTo:currentWindow animated:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:currentWindow animated:YES];
    });
    
}

@end

//
//  ViewController.m
//  CheckLib
//
//  Created by Cheer_Harry on 2018/1/8.
//  Copyright © 2018年 Cheer_Harry. All rights reserved.
//

#import "ViewController.h"
#import <ZCBLSDK/ZCBLSDK.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"视频等待连接";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"派单" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(gotoVideo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)gotoVideo
{
    ZCBLVideoModel *model = [[ZCBLVideoModel alloc] init];
    model.siSurveyNo = @"37137289372973892";
    model.phoneNum = @"18800176455";
    model.longitude = @"111";
    model.latitude = @"22";
    model.caseAddress = @"北京";
    model.isDebug = YES;
    [[ZCBLVideoConnectManager sharedInstance] connectVideoWithViewController:self andWithVideoModel:model];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

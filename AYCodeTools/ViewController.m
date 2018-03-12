//
//  ViewController.m
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+CustomColor.h"
#import "UIApplication+Permissions.h"
#import "UIBarButtonItem+Block.h"
#import "UIButton+Unit.h"
#import "AYCodeTools.pch"
#import "AYTools.h"
#import "NSString+Unit.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithHexNumber:0xDC143C];
//    self.view.backgroundColor = [UIColor colorWithHexString:@"DC143C"];
    self.view.backgroundColor = [UIColor gradientFromColor:[UIColor whiteColor] toColor:[UIColor blackColor] withHeight:self.view.bounds.size.height];
    
    
    NSLog(@"%u",[[UIApplication sharedApplication] hasAccessToPhotos]);
    
    
    UIBarButtonItem *testItem = [[UIBarButtonItem alloc] initWithTitle:@"TapTap" style:UIBarButtonItemStylePlain target:nil action:nil];
    testItem.actionBlock = ^{
        NSLog(@"点击");
    };
    self.navigationItem.rightBarButtonItem = testItem;
    
    
    [self.testButton setBackgroundColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.testButton setBackgroundColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    [self.testButton setTitle:@"点击发送" forState:UIControlStateNormal];
    [self.testButton actionBlock:^(NSInteger tag) {
        AYLog(@"点击button，block回调，tag为：%ld",(long)tag);
        [self.testButton countDownTime:10 finishedTitle:@"点击重发" counttingTitle:@"秒后重新获取"];
    }];
    [self.testButton setImage:[UIImage imageNamed:@"countDown"] forState:UIControlStateNormal];
    
    AYLog(@"%lu",[AYTools currentDeviceType]);
    AYLog(@"SHA1: %@",[@"123" handleSHA1String]);
    AYLog(@"MD5: %@",[@"123" handleMD5String32Bit]);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

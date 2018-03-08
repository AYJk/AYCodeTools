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
@interface ViewController ()

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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

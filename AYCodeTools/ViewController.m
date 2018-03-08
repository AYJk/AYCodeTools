//
//  ViewController.m
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+CustomColor.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithHexNumber:0xDC143C];
//    self.view.backgroundColor = [UIColor colorWithHexString:@"DC143C"];
    self.view.backgroundColor = [UIColor gradientFromColor:[UIColor redColor] toColor:[UIColor blueColor] withHeight:self.view.bounds.size.height];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

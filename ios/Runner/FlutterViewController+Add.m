//
//  FlutterViewController+Add.m
//  Runner
//
//  Created by hjb_mac_mini on 2019/10/31.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "FlutterViewController+Add.h"

@implementation FlutterViewController (Add)

- (UIView *)splashScreenView{
    UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor = [UIColor whiteColor];
    return view;
}

@end

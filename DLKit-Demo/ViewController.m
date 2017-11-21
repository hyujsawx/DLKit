//
//  ViewController.m
//  DLKit-Demo
//
//  Created by DoubleL-Coding on 2012/12/12.
//  Copyright © 2017年 DoubleL-Coding. All rights reserved.
//

#import "ViewController.h"
#import "DLKitHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btn1:(id)sender {
    UIViewNew
    .dl_frame(CGRectMake(10, 99, 99, 99))
    .dl_backgroundColor([UIColor blackColor])
    .dl_addToView(self.view);
    
    UILabelNew
    .dl_frame(CGRectMake(10, 199, 99, 99))
    .dl_text(@"xxx")
    .dl_textColor([UIColor blackColor])
    .dl_font(15)
    .dl_alignment(NSTextAlignmentCenter)
    .dl_action(self, @selector(aaa))
    .dl_addToView(self.view);
    
    UIButtonNew
    .dl_frame(CGRectMake(10, 290, 99, 99))
    .dl_title(@"按钮")
    .dl_backgroundImage(@"aaa")
    .dl_action(self, @selector(aaa))
    .dl_addToView(self.view);
}

- (IBAction)btn2:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:@"xxx" forKey:@"xxx"];
    [[NSUserDefaults standardUserDefaults] setObject:@"www" forKey:@"www"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSLog(@"%@",[DLCommonFunc getUserDefaultsDictionary]);
}

- (IBAction)btn3:(id)sender {
    
}

- (IBAction)btn4:(id)sender {
    
}

- (IBAction)btn5:(id)sender {
    
}

- (void)aaa {
    NSLog(@"aaa");
}

@end






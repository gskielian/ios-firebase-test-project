//
//  ViewController.m
//  Firebase-Test-iOS
//
//  Created by Gregory Kielian on 7/11/16.
//  Copyright © 2016 foodRev. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //add firebase reference


    self.ref = [FIRDatabase database].reference;

    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [button sizeToFit];
    
    // Set a new (x,y) point for the button's center
    button.center = CGPointMake(320/2, 60);
    
    
    // Add an action in current code file (i.e. target)
    [button addTarget:self action:@selector(buttonPressed:)
     forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:button];
}

- (void)buttonPressed:(UIButton *)button {
    NSLog(@"Button Pressed");
    
    //set value via firebase
    [[_ref child:@"places"] setValue:@{@"cities": @"San Francisco"}];
    
    //set child of child via firebase
    [[[_ref child:@"users"] child:@"user"] setValue:@{@"username": @"Greg"}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

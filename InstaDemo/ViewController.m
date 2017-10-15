//
//  ViewController.m
//  InstaDemo
//
//  Created by Mohini on 15/10/17.
//  Copyright © 2017 Mohini. All rights reserved.
//


// Add this to the header of your file, e.g. in ViewController.m
// after #import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "ViewController.h"
// Add this to the body
@implementation ViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addLoginButton];
    [self checkLogin];
}
    
-(void) addLoginButton{
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
}
    
-(void) checkLogin{
    if ([FBSDKAccessToken currentAccessToken]) {
        
        NSLog(@"Logged in");
        // User is logged in, do work such as go to next view controller.
    }
}
@end

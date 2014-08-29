//
//  AppDelegate.m
//  MAThemeKit
//
//  Created by Mike on 8/29/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import "AppDelegate.h"
#import "MAThemeKit.h"
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    [MAThemeKit setupThemeWithPrimaryColor:[MAThemeKit colorWithR:0 G:184 B:156] secondaryColor:[UIColor whiteColor] fontName:@"HelveticaNeue-Light" lightStatusBar:YES];
    [MAThemeKit colorWithHexString:@"00b89c"];
    MainViewController *mainVC = [MainViewController new];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainVC];
    mainVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    navigationController.navigationBar.translucent = NO;
    
    UITabBarController *tabBarController = [UITabBarController new];
    tabBarController.viewControllers = @[navigationController];
    tabBarController.tabBar.translucent = NO;
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end

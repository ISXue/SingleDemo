//
//  AppDelegate.m
//  SingleDemo
//
//  Created by @孙学 on 2020/7/9.
//  Copyright © 2020 @SX. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "MainNavigationVC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self configRootVc];
    return YES;
}

- (void)configRootVc{
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    MainViewController *mainVc = [[MainViewController alloc]init];
    MainNavigationVC *navigationVc = [[MainNavigationVC alloc]initWithRootViewController:mainVc];
    self.window.rootViewController = navigationVc;
    [self.window makeKeyAndVisible];
}




@end

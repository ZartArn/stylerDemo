//
//  AppDelegate.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 02.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "AppDelegate.h"
#import "StyleButtonsController.h"
#import "StyleLablesController.h"
#import "StyleCellController.h"

@interface AppDelegate()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.uiss = [UISS configureWithDefaultJSONFile];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"barButtons" ofType:@"json"];
//    [UISS configureWithJSONFilePath:path];
    self.uiss.statusWindowEnabled = YES;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    StyleButtonsController *v1 = [[StyleButtonsController alloc] init];
    v1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:v1];

    StyleLablesController *v2 = [[StyleLablesController alloc] init];
    v2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:v2];

    StyleCellController *v3 = [[StyleCellController alloc] init];
    v3.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:2];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:v3];
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    tab.viewControllers = @[nav1, nav2, nav3];
    self.window.rootViewController = tab;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

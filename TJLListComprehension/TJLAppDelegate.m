//
//  TJLAppDelegate.m
//  TJLListComprehension
//
//  Created by Terry Lewis II on 4/25/14.
//  Copyright (c) 2014 Blue Plover Productions LLC. All rights reserved.
//

#import "TJLAppDelegate.h"
#import "TJLListComprehension.h"

@implementation TJLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *list1 = @[@1, @2, @3];
    NSArray *list2 = @[@4, @5, @6];
    NSArray *array = [TJLListComprehension listComprehensionWithLists:@[list1, list2] function:^id(id obj, id obj1) {
        return @[obj, obj1];
    }                                                       predicate:^BOOL(NSNumber *obj, NSNumber *obj1) {
        return (obj.integerValue + obj1.integerValue) % 2 == 0;
    }];
    NSLog(@"%@", array);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

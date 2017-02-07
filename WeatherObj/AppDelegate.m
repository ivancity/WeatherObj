//
//  AppDelegate.m
//  WeatherObj
//
//  Created by MC_test on 02/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(instancetype)init {
    self.window = [[UIWindow alloc] init];
    self.appCoordinator = [[AppCoordinator alloc] initWithWindow:self.window];
    return [super init];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.rootViewController = [self.appCoordinator startController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

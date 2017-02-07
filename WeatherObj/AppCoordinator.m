//
//  AppCoordinator.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppCoordinator.h"
#import "SplashCoordinator.h"

@implementation AppCoordinator

- (id)initWithWindow:(UIWindow *)window_ {
    self = [super init];
    if(self) {
        self.window = window_;
    }
    return self;
}

- (UIViewController *)startController {
    SplashCoordinator *splashCoordinator = [[SplashCoordinator alloc] init];
    splashCoordinator.coordinatorDelegate = self;
    return [splashCoordinator startController];
}

- (void)splashCoordinatorFinished:(Forecasts*)withForecasts {
    NSLog(@"Here");
}


@end

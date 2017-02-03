//
//  AppCoordinator.h
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import "Coordinator.h"
#import "SplashCoordinator.h"
@interface AppCoordinator : NSObject<Coordinator, SplashCoordinatorCoordinatorDelegate>
@property (strong, nonatomic, nullable) UIWindow *const window;
@property (nonatomic, nullable) id<Coordinator> currentCoordinator;
@end

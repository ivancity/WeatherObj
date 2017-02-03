//
//  SplashCoordinator.h
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import "Coordinator.h"
#import "SplashViewModel.h"

@protocol SplashCoordinatorCoordinatorDelegate <NSObject>
- (void)splashCoordinatorFinished;
@end

@interface SplashCoordinator : NSObject<Coordinator>
@property (nonatomic, weak) id<SplashCoordinatorCoordinatorDelegate> coordinatorDelegate;
@property (nonatomic, strong) SplashViewModel* viewModel;

@end

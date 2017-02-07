//
//  SplashViewModel.h
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecasts.h"

@protocol SplashViewModelCoordinatorDelegate <NSObject>
- (void) fetchCompleted:(Forecasts *)forecasts;
@end

@protocol SplashViewModelViewDelegate <NSObject>
- (void)displayError:(NSString *) message;
@end

@interface SplashViewModel : NSObject
@property (nonatomic, strong) id<SplashViewModelCoordinatorDelegate> coordinatorDelegate;
@property (nonatomic, weak) id<SplashViewModelViewDelegate> viewDelegate;

- (void)getWeatherData;

@end

//
//  SplashViewModel.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashViewModel.h"
#import "WeatherRssFeedService.h"

@implementation SplashViewModel

- (instancetype)init {
    self = [super init];
    if(self) {
        [self getWeatherData];
    }
    return self;
}

- (void)getWeatherData {
    [WeatherRssFeedService getWeatherDataWithCompletion:^(Forecasts *forecasts)
    {
        [self.coordinatorDelegate fetchCompleted:forecasts];
    }];
}

@end

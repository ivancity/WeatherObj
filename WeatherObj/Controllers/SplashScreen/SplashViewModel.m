//
//  SplashViewModel.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashViewModel.h"
@implementation SplashViewModel

- (id)init {
    self = [super init];
    if(self) {
        [self getWeatherData];
    }
    return self;
}

- (void)getWeatherData {
    
}

@end

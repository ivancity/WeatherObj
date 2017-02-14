//
//  DetailViewModel.h
//  WeatherObj
//
//  Created by MC_test on 14/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import "Forecasts.h"
#import "Forecast.h"
#import <Foundation/Foundation.h>

@interface DetailViewModel : NSObject

@property (nonatomic, strong) Forecast* forecast;
@property (nonatomic) int numberOfSections;

- (instancetype)initWithForecasts:(Forecasts*)forecasts;
- (int)numberOfRows;
- (Forecast*)rowAt:(NSIndexPath*)indexPath;

@end

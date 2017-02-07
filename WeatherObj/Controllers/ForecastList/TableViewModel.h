//
//  TableViewModel.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecasts.h"
#import "Forecast.h"
#import <UIKit/UIKit.h>

@interface TableViewModel : NSObject

@property (nonatomic, strong) Forecasts* forecasts;
@property (nonatomic) int numberOfSections;

- (instancetype)initWithForecasts:(Forecasts*)forecasts;
- (int)numberOfRows;
- (Forecast*)rowAt:(NSIndexPath*)indexPath;

@end

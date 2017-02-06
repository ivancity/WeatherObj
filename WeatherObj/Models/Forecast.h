//
//  Forecast.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import "ForecastDate.h"
@interface Forecast : NSObject
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) ForecastDate *day;
@property (nonatomic, strong) ForecastDate *night;
@property (nonatomic, strong) NSString *dateFormatted;
@property (nonatomic, strong) NSArray *placeArray;
@end

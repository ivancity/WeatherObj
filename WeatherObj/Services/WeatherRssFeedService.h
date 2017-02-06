//
//  WeatherRssFeedService.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecasts.h"

@interface WeatherRssFeedService : NSObject
+ (void)getWeatherDataWithCompletion: (void (^)(Forecasts*))callbackCompletion;
@end

//
//  WeatherRssFeedService.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

@interface WeatherRssFeedService : NSObject
+ (void)getWeatherDataWithCompletion: (void (^)())callbackCompletion;
@end

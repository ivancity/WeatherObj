//
//  WeatherRssFeedService.m
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherRssFeedService.h"
#import "WeatherDataManager.h"

@implementation WeatherRssFeedService

+ (void)getWeatherDataWithCompletion:(void (^)(Forecasts *))callbackCompletion {
    NSString *url = @"http://www.ilmateenistus.ee/ilma_andmed/xml/forecast.php";
    NSURL *requestURL = [NSURL URLWithString:url];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:requestURL];
    NSURLSessionDataTask *session = [[NSURLSession sharedSession] dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error != nil) {
            callbackCompletion(nil);
        }
        if (data == nil) {
            callbackCompletion(nil);
        }
        //TODO process incoming data with WeatherDataManager()
        WeatherDataManager *manager = [[WeatherDataManager alloc] initWithData:data];
        [manager start];
        Forecasts *forecasts = manager.forecasts;
        dispatch_async(dispatch_get_main_queue(), ^{
            callbackCompletion(forecasts);
        });
    }];
    [session resume];
}

@end

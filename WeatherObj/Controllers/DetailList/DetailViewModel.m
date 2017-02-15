//
//  DetailViewModel.m
//  WeatherObj
//
//  Created by MC_test on 14/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewModel.h"

@implementation DetailViewModel

-(instancetype)initWithForecasts:(Forecasts *)forecasts {
    self = [super init];
    if (self) {
        self.forecast = forecasts.forecasts[0];
        self.numberOfSections = 1;
    }
    return self;
}

- (int)numberOfRows {
    if (self.forecast == nil) {
        return 0;
    }
    return (int)self.forecast.day.placeArray.count;
}

- (NSArray*)rowAt:(NSIndexPath *)indexPath {
    if (self.forecast == nil) {
        return nil;
    }
    
    Place *place = self.forecast.day.placeArray[indexPath.row];
    Place *night = self.forecast.night.placeArray[indexPath.row];
    NSArray *result = [[NSArray alloc] init];
    result = [result arrayByAddingObject:place];
    result = [result arrayByAddingObject:night];
    return result;
}


@end

//
//  TableViewModel.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewModel.h"
@implementation TableViewModel

- (instancetype)initWithForecasts:(Forecasts *)forecasts {
    self = [super init];
    if (self) {
        self.forecasts = forecasts;
        self.numberOfSections = 1;
    }
    return self;
}

- (int)numberOfRows {
    if (self.forecasts) {
        return 0;
    }
    return (int)self.forecasts.forecasts.count;
}

@end

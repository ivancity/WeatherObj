//
//  DetailListCoordinator.m
//  WeatherObj
//
//  Created by MC_test on 14/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailListCoordinator.h"
#import "Forecasts.h"

@implementation DetailListCoordinator

- (instancetype)initWithForecasts:(Forecasts *)forecasts {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (UIViewController *)startController {
    return self.listVC;
}

@end

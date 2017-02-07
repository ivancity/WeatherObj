//
//  TableViewCoordinator.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewCoordinator.h"
#import "TableViewModel.h"
#import "ForecastListViewController.h"

@implementation TableViewCoordinator

- (instancetype)initWithForecasts:(Forecasts *)forecasts {
    self = [super init];
    if (self) {
        self.viewModel = [[TableViewModel alloc] initWithForecasts:forecasts];
        self.listVC = [[ForecastListViewController alloc] initWithViewModel: self.viewModel];
    }
    return self;
}

- (UIViewController *)startController {
    return self.listVC;
}

@end

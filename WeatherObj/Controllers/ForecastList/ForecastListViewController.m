//
//  ForecastListViewController.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForecastListViewController.h"

@implementation ForecastListViewController

- (instancetype)initWithViewModel:(TableViewModel *)viewModel_{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.viewModel = viewModel_;
        self.title = @"Forecast";
    }
    return self;
}



@end

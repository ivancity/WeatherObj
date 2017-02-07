//
//  TableViewCoordinator.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecasts.h"
#import "Coordinator.h"
#import "TableViewModel.h"

@interface TableViewCoordinator : NSObject<Coordinator>
@property (nonatomic, strong) TableViewModel* viewModel;
@property (nonatomic, strong) ForecastListViewController* listVC;

- (instancetype)initWithForecasts:(Forecasts*)forecasts;

@end

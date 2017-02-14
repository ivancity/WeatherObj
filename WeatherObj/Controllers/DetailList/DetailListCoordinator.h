//
//  DetailListCoordinator.h
//  WeatherObj
//
//  Created by MC_test on 14/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Coordinator.h"
#import "DetailViewModel.h"
#import "DetailViewController.h"
#import "Forecasts.h"

@interface DetailListCoordinator : NSObject<Coordinator>
@property (nonatomic, strong) DetailViewModel* viewModel;
@property (nonatomic, strong) DetailViewController* listVC;
- (instancetype)initWithForecasts:(Forecasts*)forecasts;
@end

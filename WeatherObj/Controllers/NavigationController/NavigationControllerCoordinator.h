//
//  NavigationControllerCoordinator.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import "Coordinator.h"
#import "TableViewCoordinator.h"
#import "DetailListCoordinator.h"
@interface NavigationControllerCoordinator : NSObject<Coordinator, TableViewCoordinatorCoordinatorDelegate>
@property (nonatomic, strong) TableViewCoordinator* tableViewCoordinator;
@property (nonatomic, strong) DetailListCoordinator* detailViewCoordinator;
@property (nonatomic, strong) Forecasts* forecasts;
@property (nonatomic, strong) UINavigationController* navController;

- (instancetype)initWithForecasts:(Forecasts*)forecasts;

@end

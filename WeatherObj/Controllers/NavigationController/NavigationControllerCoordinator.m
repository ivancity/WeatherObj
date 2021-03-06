//
//  NavigationControllerCoordinator.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NavigationControllerCoordinator.h"

@implementation NavigationControllerCoordinator

- (instancetype)initWithForecasts:(Forecasts *)forecasts {
    self = [super init];
    if (self) {
        self.forecasts = forecasts;
        self.tableViewCoordinator = [[TableViewCoordinator alloc] initWithForecasts:forecasts];
        self.detailViewCoordinator = [[DetailListCoordinator alloc] initWithForecasts:forecasts];
        self.tableViewCoordinator.coordinatorDelegate = self;
        
    }
    return self;
}

- (UIViewController *)startController {
    UIViewController *forecastListVC = [self.tableViewCoordinator startController];
    self.navController = [[UINavigationController alloc] initWithRootViewController:forecastListVC];
    return self.navController;
}

//TableViewCoordinatorCoordinatorDelegate implementation

-(void)openDetailView {
    UIViewController *detailVC = [self.detailViewCoordinator startController];
    [self.navController pushViewController:detailVC
                                  animated:YES];
}

@end

//
//  TableViewModel.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecasts.h"
#import "Forecast.h"
#import <UIKit/UIKit.h>

@protocol TableViewModelCoordinatorDelegate <NSObject>
- (void)openDetailView;
@end

@interface TableViewModel : NSObject

@property (nonatomic, weak) id<TableViewModelCoordinatorDelegate> coordinatorDelegate;
@property (nonatomic, strong) Forecasts* forecasts;
@property (nonatomic) int numberOfSections;

- (instancetype)initWithForecasts:(Forecasts*)forecasts;
- (int)numberOfRows;
- (Forecast*)rowAt:(NSIndexPath*)indexPath;
- (void)selectFirstRow;

@end

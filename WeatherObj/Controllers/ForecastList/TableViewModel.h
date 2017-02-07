//
//  TableViewModel.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecasts"

typedef NS_ENUM(NSInteger, TableCells) {
    firstCell,
    otherCell
};

@interface TableViewModel : NSObject

@property (nonatomic, strong) Forecasts* forecasts;
@property (nonatomic) int numberOfSections;

- (instancetype)initWithForecasts:(Forecasts*)forecasts;
- (int)numberOfRows;



@end

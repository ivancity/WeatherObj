//
//  FirstWeatherCell.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forecast.h"

@interface FirstWeatherCell : UITableViewCell

//day views
@property (nonatomic, strong) UILabel* dayLabel;
@property (nonatomic, strong) UILabel* dayMaxValues;
@property (nonatomic, strong) UILabel* dayMinValues;
@property (nonatomic, strong) UILabel* dayTempDescription;
@property (nonatomic, strong) UILabel* dayWeatherText;
@property (nonatomic, strong) UILabel* dayIcon;
//night views
@property (nonatomic, strong) UILabel* nightLabel;
@property (nonatomic, strong) UILabel* nightMaxValues;
@property (nonatomic, strong) UILabel* nightMinValues;
@property (nonatomic, strong) UILabel* nightTempDescription;
@property (nonatomic, strong) UILabel* nightWeatherText;
@property (nonatomic, strong) UILabel* nightIcon;
//other views
@property (nonatomic, strong) UILabel* date;
@property (nonatomic) int margin;
@property (nonatomic) int smallMargin;
@property (nonatomic) int dataHeight;

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (void)setupViews;
- (void)addViewStyles;
- (void)addViewConstraints;
- (void)setupDayViews;
- (void)setupNightViews;
- (void)dayViewStyles;
- (void)nightViewStyles;
- (void)dayViewConstraints;
- (void)nightViewConstraints;
- (void)set:(Forecast*)forecast;

@end

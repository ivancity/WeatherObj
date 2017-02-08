//
//  WeatherCell.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Forecast.h"
@interface WeatherCell : UITableViewCell

//day views
@property (nonatomic, strong) UILabel *dayLabel;
@property (nonatomic, strong) UILabel *dayTempMaxTitle;
@property (nonatomic, strong) UILabel *dayTempMinTitle;
@property (nonatomic, strong) UILabel *dayTempMaxLabel;
@property (nonatomic, strong) UILabel *dayTempMinLabel;
//night views
@property (nonatomic, strong) UILabel *nightLabel;
@property (nonatomic, strong) UILabel *nightTempMaxTitle;
@property (nonatomic, strong) UILabel *nightTempMinTitle;
@property (nonatomic, strong) UILabel *nightTempMaxLabel;
@property (nonatomic, strong) UILabel *nightTempMinLabel;
//other views
@property (nonatomic, strong) UILabel *date;
@property (nonatomic) int margin;
@property (nonatomic) int smallMargin;

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (void)setupViews;
- (void)addViewConstraints;
- (void)addViewStyles;
- (void)setupDayViews;
- (void)setupNightViews;
- (void)dayViewStyles;
- (void)nightViewStyles;
- (void)dayViewConstraints;
- (void)nightViewConstraints;
- (void)set:(Forecast*)forecast;

@end

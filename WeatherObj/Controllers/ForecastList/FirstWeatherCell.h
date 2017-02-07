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
@property (nonatomic, strong) UILabel* dayTempMaxLabel;
@property (nonatomic, strong) UILabel* dayTempMinLabel;
@property (nonatomic, strong) UILabel* dayWindMaxLabel;
@property (nonatomic, strong) UILabel* dayWindMinLabel;
@property (nonatomic, strong) UILabel* dayTempDescription;
@property (nonatomic, strong) UILabel* dayWeatherText;
@property (nonatomic, strong) UIView* dayTempContainer;
@property (nonatomic, strong) UIView* dayWindContainer;
@property (nonatomic, strong) UILabel* dayIcon;
//night views
@property (nonatomic, strong) UILabel* nightLabel;
@property (nonatomic, strong) UILabel* nightTempMaxLabel;
@property (nonatomic, strong) UILabel* nightTempMinLabel;
@property (nonatomic, strong) UILabel* nightWindMaxLabel;
@property (nonatomic, strong) UILabel* nightWindMinLabel;
@property (nonatomic, strong) UILabel* nightTempDescription;
@property (nonatomic, strong) UILabel* nightWeatherText;
@property (nonatomic, strong) UIView* nightTempContainer;
@property (nonatomic, strong) UIView* nightWindContainer;
@property (nonatomic, strong) UILabel* nightIcon;
//other views
@property (nonatomic, strong) UILabel* date;
@property (nonatomic) int margin; //= 10;
@property (nonatomic) int smallMargin; // = 5;
@property (nonatomic) int dataHeight; // = 128;

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

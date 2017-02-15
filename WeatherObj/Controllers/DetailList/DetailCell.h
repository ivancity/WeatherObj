//
//  DetailCell.h
//  WeatherObj
//
//  Created by MC_test on 15/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Place.h"

@interface DetailCell : UITableViewCell

@property (nonatomic, strong) UILabel *cityName;
@property (nonatomic, strong) UILabel *dayValues;
@property (nonatomic, strong) UILabel *nightValues;
@property (nonatomic) int margin;
@property (nonatomic) int smallMargin;

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (void)setupViews;
- (void)addViewConstraints;
- (void)addViewStyles;
- (void)set:(Place*)day and:(Place*)night;
@end

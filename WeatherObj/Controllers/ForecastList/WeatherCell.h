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

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (void)set:(Forecast*)forecast;

@end

//
//  FirstWeatherCell.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstWeatherCell.h"
#import "UIColorExtension.h"
#import "Masonry.h"

@implementation FirstWeatherCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //day views
        self.dayLabel = [[UILabel alloc] init];
        self.dayTempMaxLabel = [[UILabel alloc] init];
        self.dayTempMinLabel = [[UILabel alloc] init];
        self.dayWindMaxLabel = [[UILabel alloc] init];
        self.dayWindMinLabel = [[UILabel alloc] init];
        self.dayTempDescription = [[UILabel alloc] init];
        self.dayIcon = [[UILabel alloc] init];
        self.dayWeatherText = [[UILabel alloc] init];
        self.dayTempContainer = [[UIView alloc] init];
        self.dayWindContainer = [[UIView alloc] init];
        //night views
        self.nightLabel = [[UILabel alloc] init];
        self.nightTempMaxLabel = [[UILabel alloc] init];
        self.nightTempMinLabel = [[UILabel alloc] init];
        self.nightWindMaxLabel = [[UILabel alloc] init];
        self.nightWindMinLabel = [[UILabel alloc] init];
        self.nightTempDescription = [[UILabel alloc] init];
        self.nightWeatherText = [[UILabel alloc] init];
        self.nightIcon = [[UILabel alloc] init];
        self.nightTempContainer = [[UIView alloc] init];
        self.nightWindContainer = [[UIView alloc] init];
        //other views
        self.date = [[UILabel alloc] init];
        self.margin = 10;
        self.smallMargin = 5;
        self.dataHeight = 128;
        
        [self setupViews];
        [self addViewConstraints];
        [self addViewStyles];
    }
    return self;
}

-(void)setupViews {
    [self.dayLabel setText:@"Day"];
    [self.nightLabel setText:@"Night"];
    [self.contentView addSubview:self.date];
    [self setupDayViews];
    [self setupNightViews];
}

-(void)addViewStyles {
    [self.date setFont:[UIFont boldSystemFontOfSize:18]];
    [self.date setTextColor:[UIColor whiteTwo]];
    [self dayViewStyles];
    [self nightViewStyles];
}

-(void)addViewConstraints {
    [self.date mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(self.margin);
        make.left.equalTo(self.contentView).offset(self.margin);
    }];
    [self dayViewConstraints];
    [self nightViewConstraints];
}

-(void)setupDayViews {
    
}

-(void)setupNightViews {
    
}

-(void)dayViewStyles {
    
}

-(void)nightViewStyles {
    
}

-(void)dayViewConstraints {
    
}

-(void)nightViewConstraints {
    
}

-(void)set:(Forecast *)forecast {
    [self.date setText:forecast.date];
    
}

@end

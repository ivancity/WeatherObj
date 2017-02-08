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
    [self.contentView addSubview:self.dayLabel];
    [self.contentView addSubview:self.dayIcon];
    [self.dayTempContainer addSubview:self.dayTempMaxLabel];
    [self.dayTempContainer addSubview:self.dayTempMinLabel];
    [self.dayWindContainer addSubview:self.dayWindMaxLabel];
    [self.dayWindContainer addSubview:self.dayWindMinLabel];
    [self.contentView addSubview:self.dayTempContainer];
    [self.contentView addSubview:self.dayWindContainer];
    [self.contentView addSubview:self.dayTempDescription];
    [self.contentView addSubview:self.dayWeatherText];
}

-(void)setupNightViews {
    [self.contentView addSubview:self.nightLabel];
    [self.contentView addSubview:self.nightIcon];
    [self.nightTempContainer addSubview:self.nightTempMaxLabel];
    [self.nightTempContainer addSubview:self.nightTempMinLabel];
    [self.nightWindContainer addSubview:self.nightWindMaxLabel];
    [self.nightWindContainer addSubview:self.nightWindMinLabel];
    [self.contentView addSubview:self.nightTempContainer];
    [self.contentView addSubview:self.nightWindContainer];
    [self.contentView addSubview:self.nightTempDescription];
    [self.contentView addSubview:self.nightWeatherText];
}

-(void)dayViewStyles {
    [self.dayLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.dayIcon setFont:[UIFont systemFontOfSize: 48]];
    [self.dayTempMaxLabel setFont:[UIFont boldSystemFontOfSize: 18]];
    [self.dayWindMaxLabel setFont:[UIFont boldSystemFontOfSize: 18]];
    [self.dayTempMinLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.dayWindMinLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.dayTempDescription setFont:[UIFont systemFontOfSize: 14]];
    [self.dayWeatherText setFont:[UIFont systemFontOfSize: 14]];
    self.dayTempDescription.numberOfLines = 0;
    self.dayWeatherText.numberOfLines = 0;
    [self.dayLabel setTextColor:[UIColor whiteTwo]];
    [self.dayTempMaxLabel setTextColor:[UIColor whiteColor]];
    [self.dayTempMinLabel setTextColor:[UIColor whiteColor]];
    [self.dayWindMaxLabel setTextColor:[UIColor whiteColor]];
    [self.dayWindMinLabel setTextColor:[UIColor whiteColor]];
    [self.dayTempDescription setTextColor:[UIColor whiteThree]];
    [self.dayWeatherText setTextColor:[UIColor whiteThree]];
}

-(void)nightViewStyles {
    [self.nightLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.nightIcon setFont:[UIFont systemFontOfSize: 48]];
    [self.nightTempMaxLabel setFont:[UIFont boldSystemFontOfSize: 18]];
    [self.nightWindMaxLabel setFont:[UIFont boldSystemFontOfSize: 18]];
    [self.nightTempMinLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.nightWindMinLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.nightTempDescription setFont:[UIFont systemFontOfSize: 14]];
    [self.nightWeatherText setFont:[UIFont systemFontOfSize: 14]];
    self.nightTempDescription.numberOfLines = 0;
    self.nightWeatherText.numberOfLines = 0;
    [self.nightLabel setTextColor:[UIColor whiteTwo]];
    [self.nightTempMaxLabel setTextColor:[UIColor whiteColor]];
    [self.nightTempMinLabel setTextColor:[UIColor whiteColor]];
    [self.nightWindMaxLabel setTextColor:[UIColor whiteColor]];
    [self.nightWindMinLabel setTextColor:[UIColor whiteColor]];
    [self.nightTempDescription setTextColor:[UIColor whiteThree]];
    [self.nightWeatherText setTextColor:[UIColor whiteThree]];
}

-(void)dayViewConstraints {
    [self.dayLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.date.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.dayIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayLabel.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.dayTempContainer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayIcon.mas_bottom);
        make.left.equalTo(self.contentView);
        make.right.equalTo(self.dayWindContainer.mas_left);
        //make.height.equalTo(dataHeight)
        make.height.mas_equalTo(self.dataHeight);
        make.width.equalTo(self.contentView).dividedBy(2);
    }];
    [self.dayWindContainer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayIcon.mas_bottom);
        make.left.equalTo(self.dayTempContainer.mas_right);
        make.right.equalTo(self.contentView);
        //make.height.equalTo(dataHeight)
        make.height.mas_equalTo(self.dataHeight);
        make.width.equalTo(self.contentView).dividedBy(2);
    }];
    [self.dayTempMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempContainer).offset(self.smallMargin);
        make.centerX.equalTo(self.dayTempContainer);
        make.height.equalTo(self.dayTempContainer).dividedBy(2);
    }];
    [self.dayTempMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempMaxLabel.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.dayTempContainer);
        make.bottom.equalTo(self.dayTempContainer).offset(-self.smallMargin);
        make.height.equalTo(self.dayTempContainer).dividedBy(2);
    }];
    [self.dayWindMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayWindContainer).offset(self.smallMargin);
        make.centerX.equalTo(self.dayWindContainer);
        make.height.equalTo(self.dayWindContainer).dividedBy(2);
    }];
    [self.dayWindMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayWindMaxLabel.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.dayWindContainer);
        make.bottom.equalTo(self.dayWindContainer).offset(-self.smallMargin);
        make.height.equalTo(self.dayWindContainer).dividedBy(2);
    }];
    [self.dayTempDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempContainer.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin);
        make.right.equalTo(self.contentView).offset(-self.margin);
    }];
    [self.dayWeatherText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempDescription.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin);
        make.right.equalTo(self.contentView).offset(-self.margin);
    }];
}

-(void)nightViewConstraints {
    [self.nightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayWeatherText.mas_bottom).offset(self.margin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.nightIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightLabel.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.nightTempContainer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightIcon.mas_bottom);
        make.left.equalTo(self.contentView);
        make.right.equalTo(self.nightWindContainer.mas_left);
        //make.height.equalTo(dataHeight)
        make.height.mas_equalTo(self.dataHeight);
        make.width.equalTo(self.contentView).dividedBy(2);
    }];
    [self.nightWindContainer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightIcon.mas_bottom);
        make.left.equalTo(self.nightTempContainer.mas_right);
        make.right.equalTo(self.contentView);
        //make.height.equalTo(dataHeight)
        make.height.mas_equalTo(self.dataHeight);
        make.width.equalTo(self.contentView).dividedBy(2);
    }];
    [self.nightTempMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightTempContainer).offset(self.smallMargin);
        make.centerX.equalTo(self.nightTempContainer);
        make.height.equalTo(self.nightTempContainer).dividedBy(2);
    }];
    [self.nightTempMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightTempMaxLabel.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.nightTempContainer);
        make.bottom.equalTo(self.nightTempContainer).offset(-self.smallMargin);
        make.height.equalTo(self.nightTempContainer).dividedBy(2);
    }];
    [self.nightWindMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightWindContainer).offset(self.smallMargin);
        make.centerX.equalTo(self.nightWindContainer);
        make.height.equalTo(self.nightWindContainer).dividedBy(2);
    }];
    [self.nightWindMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightWindMaxLabel.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.nightWindContainer);
        make.bottom.equalTo(self.nightWindContainer).offset(-self.smallMargin);
        make.height.equalTo(self.nightWindContainer).dividedBy(2);
    }];
    [self.nightTempDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightTempContainer.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin);
        make.right.equalTo(self.contentView).offset(-self.margin);
    }];
    [self.nightWeatherText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightTempDescription.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin);
        make.right.equalTo(self.contentView).offset(-self.margin);
        make.bottom.equalTo(self.contentView).offset(-self.margin);
    }];
}

-(void)set:(Forecast *)forecast {
    if (forecast == nil) {
        return;
    }
    [self.date setText:forecast.date];
    //day binding
    if (forecast.day) {
        [self.dayIcon setText:forecast.day.icon];
        [self.dayTempMaxLabel setText:forecast.day.tempMaxFormatted];
        [self.dayTempMinLabel setText:forecast.day.tempMinFormatted];
        [self.dayWindMaxLabel setText:forecast.day.windMaxFormatted];
        [self.dayWindMinLabel setText:forecast.day.windMinFormatted];
        [self.dayTempDescription setText:[forecast.day temperatureAsPhrase]];
        [self.dayWeatherText setText:forecast.day.textDescription];
    }
    
    //night binding
    if (forecast.night) {
        [self.nightIcon setText:forecast.night.icon];
        [self.nightTempMaxLabel setText:forecast.night.tempMaxFormatted];
        [self.nightTempMinLabel setText:forecast.night.tempMinFormatted];
        [self.nightWindMaxLabel setText:forecast.night.windMaxFormatted];
        [self.nightWindMinLabel setText:forecast.night.windMinFormatted];
        [self.nightTempDescription setText:[forecast.night temperatureAsPhrase]];
        [self.nightWeatherText setText:forecast.night.textDescription];
    }
}

@end

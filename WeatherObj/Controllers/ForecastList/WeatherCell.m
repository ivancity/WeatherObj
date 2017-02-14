//
//  WeatherCell.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherCell.h"
#import "UIColorExtension.h"
#import "Masonry.h"

@implementation WeatherCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.margin = 10;
        self.smallMargin = 5;
        self.date = [[UILabel alloc] init];
        //day views
        self.dayLabel = [[UILabel alloc] init];
        self.dayTempMaxLabel = [[UILabel alloc] init];
        self.dayTempMinLabel = [[UILabel alloc] init];
        self.dayTempMaxTitle = [[UILabel alloc] init];
        self.dayTempMinTitle = [[UILabel alloc] init];
        //night views
        self.nightLabel = [[UILabel alloc] init];
        self.nightTempMaxLabel = [[UILabel alloc] init];
        self.nightTempMinLabel = [[UILabel alloc] init];
        self.nightTempMaxTitle = [[UILabel alloc] init];
        self.nightTempMinTitle = [[UILabel alloc] init];
        
        [self setupViews];
        [self addViewConstraints];
        [self addViewStyles];
    }
    return self;
}

-(void)setupViews {
    [self.contentView addSubview:self.date];
    [self setupDayViews];
    [self setupNightViews];
}

-(void)addViewStyles {
    [self.date setFont:[UIFont boldSystemFontOfSize:16]];
    [self.date setTextColor:[UIColor whiteTwo]];
    [self dayViewStyles];
    [self setupNightViews];
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
    [self.dayLabel setText:@"Day"];
    [self.dayTempMaxTitle setText:@"Max Temp."];
    [self.dayTempMinTitle setText:@"Min Temp."];
    [self.contentView addSubview:self.dayLabel];
    [self.contentView addSubview:self.dayTempMaxTitle];
    [self.contentView addSubview:self.dayTempMinTitle];
    [self.contentView addSubview:self.dayTempMaxLabel];
    [self.contentView addSubview:self.dayTempMinLabel];
}

-(void)setupNightViews {
    [self.nightLabel setText:@"Night"];
    [self.nightTempMaxTitle setText:@"Max Temp."];
    [self.nightTempMinTitle setText:@"Min Temp."];
    [self.contentView addSubview:self.nightLabel];
    [self.contentView addSubview:self.nightTempMaxTitle];
    [self.contentView addSubview:self.nightTempMinTitle];
    [self.contentView addSubview:self.nightTempMaxLabel];
    [self.contentView addSubview:self.nightTempMinLabel];
}

-(void)dayViewStyles {
    [self.dayLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.dayTempMaxTitle setFont:[UIFont boldSystemFontOfSize: 16]];
    [self.dayTempMinTitle setFont:[UIFont boldSystemFontOfSize: 16]];
    [self.dayTempMaxLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.dayTempMinLabel setFont:[UIFont systemFontOfSize: 18]];
    
    [self.dayLabel setTextColor:[UIColor whiteTwo]];
    [self.dayTempMaxTitle setTextColor:[UIColor whiteThree]];
    [self.dayTempMinTitle setTextColor:[UIColor whiteThree]];
    [self.dayTempMaxLabel setTextColor:[UIColor whiteColor]];
    [self.dayTempMinLabel setTextColor:[UIColor whiteColor]];
}

-(void)nightViewStyles {
    [self.nightLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.nightTempMaxTitle setFont:[UIFont boldSystemFontOfSize: 16]];
    [self.nightTempMinTitle setFont:[UIFont boldSystemFontOfSize: 16]];
    [self.nightTempMaxLabel setFont:[UIFont systemFontOfSize: 18]];
    [self.nightTempMinLabel setFont:[UIFont systemFontOfSize: 18]];
    
    [self.nightLabel setTextColor:[UIColor whiteTwo]];
    [self.nightTempMaxTitle setTextColor:[UIColor whiteThree]];
    [self.nightTempMinTitle setTextColor:[UIColor whiteThree]];
    [self.nightTempMaxLabel setTextColor:[UIColor whiteColor]];
    [self.nightTempMinLabel setTextColor:[UIColor whiteColor]];
}

-(void)dayViewConstraints {
    [self.dayLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.date.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.dayTempMaxTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayLabel.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin * 4);
    }];
    [self.dayTempMinTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempMaxTitle.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin * 4);
    }];
    [self.dayTempMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayLabel.mas_bottom).offset(self.smallMargin);
        make.right.equalTo(self.contentView).offset(-self.margin * 4);
    }];
    [self.dayTempMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempMaxLabel.mas_bottom).offset(self.smallMargin);
        make.right.equalTo(self.contentView).offset(-self.margin * 4);
    }];

}

-(void)nightViewConstraints {
    [self.nightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayTempMinTitle.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.nightTempMaxTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightLabel.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin * 4);
    }];
    [self.nightTempMinTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightTempMaxTitle.mas_bottom).offset(self.smallMargin);
        make.left.equalTo(self.contentView).offset(self.margin * 4);
    }];
    [self.nightTempMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightLabel.mas_bottom).offset(self.smallMargin);
        make.right.equalTo(self.contentView).offset(-self.margin * 4);
    }];
    [self.nightTempMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightTempMaxLabel.mas_bottom).offset(self.smallMargin);
        make.right.equalTo(self.contentView).offset(-self.margin * 4);
        make.bottom.equalTo(self.contentView).offset(-self.margin);
    }];
}

-(void)set:(Forecast *)forecast {
    [self.date setText:forecast.date];
    if (forecast.day) {
        [self.dayTempMaxLabel setText:
         [@"Max Temp.   " stringByAppendingString: forecast.day.tempMaxFormatted]
        ];
        [self.dayTempMinLabel setText:
         [@"Min Temp.   " stringByAppendingString: forecast.day.tempMinFormatted]
        ];
    }
    if (forecast.night) {
        [self.nightTempMaxLabel setText:forecast.night.tempMaxFormatted];
        [self.nightTempMinLabel setText:forecast.night.tempMinFormatted];
    }
}

@end

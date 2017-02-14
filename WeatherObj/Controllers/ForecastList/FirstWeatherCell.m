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
        self.dayMaxValues = [[UILabel alloc] init];
        self.dayMinValues = [[UILabel alloc] init];
        self.dayTempDescription = [[UILabel alloc] init];
        self.dayIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        self.dayIcon.contentMode = UIViewContentModeScaleAspectFill;
        self.dayWeatherText = [[UILabel alloc] init];
        //night views
        self.nightLabel = [[UILabel alloc] init];
        self.nightMaxValues = [[UILabel alloc] init];
        self.nightMinValues = [[UILabel alloc] init];
        self.nightTempDescription = [[UILabel alloc] init];
        self.nightWeatherText = [[UILabel alloc] init];
        self.nightIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
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
    
    [self.contentView addSubview:self.dayMaxValues];
    [self.contentView addSubview:self.dayMinValues];
    
    [self.contentView addSubview:self.dayTempDescription];
    [self.contentView addSubview:self.dayWeatherText];
}

-(void)setupNightViews {
    [self.contentView addSubview:self.nightLabel];
    [self.contentView addSubview:self.nightIcon];
    
    [self.contentView addSubview:self.nightMaxValues];
    [self.contentView addSubview:self.nightMinValues];
    
    [self.contentView addSubview:self.nightTempDescription];
    [self.contentView addSubview:self.nightWeatherText];
}

-(void)dayViewStyles {
    [self.dayLabel setFont:[UIFont systemFontOfSize: 18]];
    
    [self.dayMaxValues setFont:[UIFont boldSystemFontOfSize: 24]];
    [self.dayMaxValues setTextColor:[UIColor whiteColor]];
    [self.dayMinValues setFont:[UIFont systemFontOfSize: 18]];
    [self.dayMinValues setTextColor:[UIColor whiteColor]];
    
    [self.dayTempDescription setFont:[UIFont systemFontOfSize: 14]];
    [self.dayWeatherText setFont:[UIFont systemFontOfSize: 14]];
    self.dayTempDescription.numberOfLines = 0;
    self.dayWeatherText.numberOfLines = 0;
    [self.dayLabel setTextColor:[UIColor whiteTwo]];
    [self.dayTempDescription setTextColor:[UIColor whiteThree]];
    [self.dayWeatherText setTextColor:[UIColor whiteThree]];
}

-(void)nightViewStyles {
    [self.nightLabel setFont:[UIFont systemFontOfSize: 18]];
    
    
    [self.nightMaxValues setFont:[UIFont boldSystemFontOfSize: 24]];
    [self.nightMaxValues setTextColor:[UIColor whiteColor]];
    [self.nightMinValues setFont:[UIFont systemFontOfSize: 18]];
    [self.nightMinValues setTextColor:[UIColor whiteColor]];
    
    [self.nightTempDescription setFont:[UIFont systemFontOfSize: 14]];
    [self.nightWeatherText setFont:[UIFont systemFontOfSize: 14]];
    self.nightTempDescription.numberOfLines = 0;
    self.nightWeatherText.numberOfLines = 0;
    [self.nightLabel setTextColor:[UIColor whiteTwo]];
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
    
    [self.dayMaxValues mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayIcon.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    
    [self.dayMinValues mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayMaxValues.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    
    [self.dayTempDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayMinValues.mas_bottom).offset(self.smallMargin);
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
    [self.nightMaxValues mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightIcon.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    
    [self.nightMinValues mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightMaxValues.mas_bottom).offset(self.smallMargin);
        make.centerX.equalTo(self.contentView);
    }];
    [self.nightTempDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nightMinValues.mas_bottom).offset(self.smallMargin);
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
        NSString *maxValues = [NSString stringWithFormat:@"%@  %@    %@",@"Max ",forecast.day.tempMaxFormatted,forecast.day.windMaxFormatted];
        NSString *minValues = [NSString stringWithFormat:@"%@  %@    %@",@"Min ",forecast.day.tempMinFormatted,forecast.day.windMinFormatted];
        self.dayIcon.image = [self findImage:forecast.day.icon];
        [self.dayMaxValues setText:maxValues];
        [self.dayMinValues setText:minValues];
        [self.dayTempDescription setText:[forecast.day temperatureAsPhrase]];
        [self.dayWeatherText setText:forecast.day.textDescription];
    }
    
    //night binding
    if (forecast.night) {
        NSString *maxValues = [NSString stringWithFormat:@"%@  %@    %@",@"Max ",forecast.night.tempMaxFormatted,forecast.night.windMaxFormatted];
        NSString *minValues = [NSString stringWithFormat:@"%@  %@    %@",@"Min ",forecast.night.tempMinFormatted,forecast.night.windMinFormatted];
        self.nightIcon.image = [self findImage:forecast.night.icon];
        [self.nightMaxValues setText:maxValues];
        [self.nightMinValues setText:minValues];
        [self.nightTempDescription setText:[forecast.night temperatureAsPhrase]];
        [self.nightWeatherText setText:forecast.night.textDescription];
    }
}

-(UIImage*)findImage:(WeatherElements)element {
    CGSize size = CGSizeMake(120, 120);
    switch (element) {
        case cloud: {
            UIImage *temp = [UIImage imageNamed:@"cloud"];
            return [self resizeImage:temp imageSize:size];
        }
        case sun: {
            UIImage *temp = [UIImage imageNamed:@"sun"];
            return [self resizeImage:temp imageSize:size];
        }
        case rain: {
            UIImage *temp = [UIImage imageNamed:@"rain"];
            return [self resizeImage:temp imageSize:size];
        }
        case snow:{
            UIImage *temp = [UIImage imageNamed:@"snow"];
            return [self resizeImage:temp imageSize:size];
        }
        case sleet:{
            UIImage *temp = [UIImage imageNamed:@"sleet"];
            return [self resizeImage:temp imageSize:size];
        }
        case mist:{
            UIImage *temp = [UIImage imageNamed:@"mist"];
            return [self resizeImage:temp imageSize:size];
        }
        case glaze:{
            UIImage *temp = [UIImage imageNamed:@"glaze"];
            return [self resizeImage:temp imageSize:size];
        }
        case rainbow:{
            UIImage *temp = [UIImage imageNamed:@"rainbow"];
            return [self resizeImage:temp imageSize:size];
        }
    }
}

-(UIImage *)resizeImage:(UIImage *)image imageSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0,0,size.width,size.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end

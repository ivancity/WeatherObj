//
//  DetailCell.m
//  WeatherObj
//
//  Created by MC_test on 15/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailCell.h"
#import "UIColorExtension.h"
#import "Masonry.h"

@implementation DetailCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.margin = 10;
        self.smallMargin = 5;
        self.cityName = [[UILabel alloc] init];
        self.dayValues = [[UILabel alloc] init];
        self.nightValues = [[UILabel alloc] init];
        [self setupViews];
        [self addViewConstraints];
        [self addViewStyles];
    }
    return self;
}

-(void)setupViews {
    [self.contentView addSubview:self.cityName];
    [self.contentView addSubview:self.dayValues];
    [self.contentView addSubview:self.nightValues];
}

-(void)addViewStyles {
    [self.cityName setFont:[UIFont boldSystemFontOfSize:18]];
    [self.dayValues setFont:[UIFont systemFontOfSize:20]];
    [self.nightValues setFont:[UIFont systemFontOfSize:20]];
    [self.cityName setTextColor:[UIColor whiteThree]];
    [self.dayValues setTextColor:[UIColor whiteColor]];
    [self.nightValues setTextColor:[UIColor grayColor]];
}

-(void)addViewConstraints {
    [self.cityName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(self.margin);
        make.centerX.equalTo(self.contentView).offset(self.margin);
    }];
    [self.dayValues mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cityName.mas_bottom).offset(self.margin);
        make.centerX.equalTo(self.contentView).offset(self.margin);
    }];
    [self.nightValues mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dayValues.mas_bottom).offset(self.margin);
        make.centerX.equalTo(self.contentView).offset(self.margin);
        make.bottom.equalTo(self.contentView).offset(-self.margin);
    }];
}

-(void)set:(Place *)day and:(Place *)night {
    NSString *dayString = [NSString stringWithFormat:@"Day: %d˚C %@", day.tempMax, day.phenomenon];
    NSString *nightString = [NSString stringWithFormat:@"Evening : %d˚C %@", night.tempMin, night.phenomenon];
    self.cityName.text = day.name;
    self.dayValues.text = dayString;
    self.nightValues.text = nightString;
}

@end

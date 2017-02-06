//
//  Place.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

@interface Place : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *phenomenon;
@property (nonatomic) int tempMin;
@property (nonatomic) int tempMax;
@property (nonatomic, strong) NSString *phenomenonExtra;
@end

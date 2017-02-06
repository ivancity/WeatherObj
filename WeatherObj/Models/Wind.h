//
//  Wind.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

@interface Wind : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *direction;
@property (nonatomic) int speedMin;
@property (nonatomic) int speedMax;
@end

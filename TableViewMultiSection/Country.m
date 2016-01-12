//
//  Country.m
//  TableViewMultiSection
//
//  Created by Apple on 1/9/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import "Country.h"

@implementation Country
- (instancetype) initwithcountry:(NSString *)country andcapital:(NSString *)capital{
    if (self == [super init]){
        self.country = country;
        self.capital = capital;
    }
    return self;
}

@end

//
//  Continent.m
//  TableViewMultiSection
//
//  Created by Apple on 1/9/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import "Continent.h"

@implementation Continent
- (instancetype)initwithcontinent:(NSString *)continent andcountries:(NSMutableArray *)countries{
    if (self == [super init]){
        self.continent = continent;
        self.countries = [[NSMutableArray alloc]initWithArray:countries];
    }
    return  self;
}


@end

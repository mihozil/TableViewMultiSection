//
//  WorldData.m
//  TableViewMultiSection
//
//  Created by Apple on 1/9/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import "WorldData.h"

@implementation WorldData
+(instancetype)getSingleton{
    WorldData *worldata= [WorldData new];
    NSString *filepath = [[NSBundle mainBundle]pathForResource:@"List" ofType:@".plist"];
    NSMutableArray* raw = [[NSMutableArray alloc]initWithContentsOfFile:filepath];
    NSMutableArray*temp = [[NSMutableArray alloc]initWithCapacity:raw.count];
    
    for (NSDictionary* item in raw){
        NSString *continentname = [item valueForKey:@"continent"];
        NSArray *countryarray = [item valueForKey:@"country"];
        
        NSMutableArray *tempcountry = [[NSMutableArray alloc]initWithCapacity:countryarray.count];
        
        for (NSString* countrydata in countryarray){
            NSArray* country_capital = [countrydata componentsSeparatedByString:@"|"];
            Country *country = [[Country alloc]initwithcountry:country_capital[0]
                                                    andcapital:country_capital[1]];
            [tempcountry addObject:country];
        }
        
        Continent *continent = [[Continent alloc]initwithcontinent:continentname
                                                      andcountries:tempcountry];
        
        [temp addObject:continent];
    }
    worldata.data = [NSMutableArray arrayWithArray:temp];

    return worldata;
    
}

@end

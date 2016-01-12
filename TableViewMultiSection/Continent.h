//
//  Continent.h
//  TableViewMultiSection
//
//  Created by Apple on 1/9/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Continent : NSObject
@property (nonatomic, strong) NSString* continent;
@property (nonatomic, strong) NSMutableArray *countries;

-(instancetype)initwithcontinent:(NSString*)continent
                    andcountries:(NSMutableArray*)countries;

@end

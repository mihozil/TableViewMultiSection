//
//  WorldData.h
//  TableViewMultiSection
//
//  Created by Apple on 1/9/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Continent.h"
#import "Country.h"

@interface WorldData : NSObject
@property NSMutableArray *data;
+(instancetype) getSingleton;

@end

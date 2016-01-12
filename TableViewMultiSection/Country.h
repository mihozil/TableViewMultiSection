//
//  Country.h
//  TableViewMultiSection
//
//  Created by Apple on 1/9/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject

@property (nonatomic,strong) NSString* country;
@property (nonatomic, strong) NSString* capital;
- (instancetype)initwithcountry:(NSString*) country andcapital:(NSString*)capital;

@end

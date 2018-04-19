//
//  PhoneNumber.m
//  Assignment4
//
//  Created by ping tseng tsai on 2018-04-18.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
- (instancetype)initWithLabel:(NSString *) label AndDigits:(NSString *) digits;
{
    self = [super init];
    if (self) {
        _label = label;
        _digits = digits;
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ - %@", _label, _digits];
}


@end

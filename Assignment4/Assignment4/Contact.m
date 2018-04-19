//
//  Contact.m
//  Assignment4
//
//  Created by ping tseng tsai on 2018-04-18.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Contact.h"

@implementation Contact
//bouns 4 - add phone number
- (instancetype)initWithName: (NSString *) name andEmail:(NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumber = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addPhoneNumber:(PhoneNumber *) phoneNumber{
    [_phoneNumber addObject: phoneNumber];
}

@end

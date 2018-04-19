//
//  Contact.h
//  Assignment4
//
//  Created by ping tseng tsai on 2018-04-18.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"

@interface Contact : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *email;

@property(nonatomic, strong) NSMutableArray *phoneNumber;
- (instancetype)initWithName: (NSString *) name andEmail:(NSString *) email;

- (void) addPhoneNumber: (PhoneNumber *) number;
@end


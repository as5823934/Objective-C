//
//  PhoneNumber.h
//  Assignment4
//
//  Created by ping tseng tsai on 2018-04-18.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

@property(nonatomic, strong) NSString *label;
@property(nonatomic, strong) NSString *digits;


- (instancetype)initWithLabel:(NSString *) label AndDigits:(NSString *) digits;
- (NSString *)description;
@end

//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by ping tseng tsai on 2018-04-24.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    Small,
    Medium,
    Large,
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, strong) NSArray *toppings;
@property (nonatomic, assign) PizzaSize size;

- (instancetype)initWithSize: (PizzaSize) size AndToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize) size;
+ (PizzaSize) getPizzaSize: (NSString *) size;
- (NSString *)description;

@end

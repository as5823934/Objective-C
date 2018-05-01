//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    return [[Pizza alloc]initWithSize:size AndToppings:toppings];
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return arc4random_uniform(2) == 1;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return arc4random_uniform(2) == 1;
};

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    
};
@end

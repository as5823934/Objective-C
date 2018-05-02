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
    if (self.delegate && [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        if([self.delegate kitchenShouldUpgradeOrder:self]){
            if ([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc]initWithSize:Large AndToppings:toppings]];
                return [[Pizza alloc]initWithSize:Large AndToppings:toppings];
            }
        }else if ([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]){
            [self.delegate kitchenDidMakePizza:[[Pizza alloc]initWithSize:size AndToppings:toppings]];
            return [[Pizza alloc]initWithSize:size AndToppings:toppings];
        }
    }
    return nil;
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

//
//  Manager.m
//  Assignment11
//
//  Created by ping tseng tsai on 2018-04-27.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return arc4random_uniform(2) == 1;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return arc4random_uniform(2) == 1;
};

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    
};

@end

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
    for (int i = 0; i < toppings.count; i++){
        if ([[toppings objectAtIndex: i] isEqualToString:@"anchovy"]) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    
}

@end

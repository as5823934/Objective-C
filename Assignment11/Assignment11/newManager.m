//
//  newManager.m
//  Assignment11
//
//  Created by ping tseng tsai on 2018-04-27.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "newManager.h"

@implementation newManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thanks for comming!");
}

@end

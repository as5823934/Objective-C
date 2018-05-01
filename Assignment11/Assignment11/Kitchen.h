//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;
@class Pizza;

@protocol KitchenDelegate
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;
@end


@interface Kitchen : NSObject

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
@property(nonatomic, weak) id<KitchenDelegate> delegate;

@end

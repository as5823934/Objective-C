//
//  KichenDelegate.h
//  Assignment11
//
//  Created by ping tseng tsai on 2018-05-02.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;


@protocol KichenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end

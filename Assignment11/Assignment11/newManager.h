//
//  newManager.h
//  Assignment11
//
//  Created by ping tseng tsai on 2018-04-27.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KichenDelegate.h"

@interface newManager : NSObject<KichenDelegate>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

//
//  Cook.h
//  Foodtruck
//
//  Created by ping tseng tsai on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Cook : NSObject <FoodTruckDelegate> //implement foodtruckdelegate protocol
//override FoodTruckDelegate class
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

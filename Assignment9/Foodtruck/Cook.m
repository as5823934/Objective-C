//
//  Cook.m
//  Foodtruck
//
//  Created by ping tseng tsai on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if ([food isEqualToString:@"salad"]){
        return 6.0;
    } else if ([food isEqualToString:@"beef"]){
        return 10.0;
    } else if([food isEqualToString:@"bao"]){
        return 8.5;
    } else if([food isEqualToString:@"shortbread"]){
        return 6.7;
    } else {
        return 4.0;
    }
}

@end

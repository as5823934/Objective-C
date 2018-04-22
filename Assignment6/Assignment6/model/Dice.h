//
//  Dice.h
//  Assignment6
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

- (instancetype)initWithValue: (NSInteger) value;
@property (nonatomic, assign) NSInteger value;//stroe value of dice
@property (nonatomic, assign) BOOL isHeld;
- (void) roll;
@end

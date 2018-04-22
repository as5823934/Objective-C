//
//  GameController.h
//  Assignment6
//
//  Created by ping tseng tsai on 2018-04-20.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray <Dice *>*dice;
@property (nonatomic, assign) NSInteger MAX_ROLL;

- (void) holdDice: (NSInteger) dieNumber;
- (void) displayDice;
- (void) rollTheRest;


@end

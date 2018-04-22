//
//  GameController.m
//  Assignment6
//
//  Created by ping tseng tsai on 2018-04-20.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        _dice = [NSMutableArray arrayWithArray:@[d1, d2, d3, d4, d5]];
        _MAX_ROLL = 5;
    }
    return self;
}

- (void) holdDice: (NSInteger) dieNumber{
    if (dieNumber > 0 && dieNumber < 6) {
        Dice *die = [_dice objectAtIndex: dieNumber -1];
        if ([die isHeld]) {
            [die setIsHeld:NO];
        }else{
            [die setIsHeld:YES];
        }
    }else {
        NSLog(@"Wrong Die Number!");
    }
    
}

-(void) rollTheRest{
    if(_MAX_ROLL > 0){
        for (int i = 0; i < _dice.count; i++) {
            if (![_dice[i] isHeld]) {
                [_dice[i] roll];
            }
        }
        _MAX_ROLL --;
        if (_MAX_ROLL == 0) {
            for (int i = 0; i < _dice.count; i++) {
                if (![_dice[i] isHeld]) {
                    [_dice[i] setIsHeld:YES];
                }
            }
        }
        [self displayDice];
    }else{
        NSLog(@"Game Over, No more rolls for you");
    }
    
}

- (void) displayDice{
    NSLog(@"%@ %@ %@ %@ %@", _dice[0], _dice[1], _dice[2], _dice[3], _dice[4]);
    
    int score = 0;
    for (int i = 0; i < _dice.count; i++) {
        if ([_dice[i] isHeld]) {
            score += [_dice[i] value];
        }
    }
    
    NSLog(@"Current Score: %d", score);
    NSLog(@"Remaining Rolls: %ld", _MAX_ROLL);
}



@end

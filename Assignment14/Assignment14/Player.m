//
//  Player.m
//  Assignment14
//
//  Created by ping tseng tsai on 2018-05-01.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOVer = NO;
        _gameLogic = [NSDictionary dictionaryWithObjectsAndKeys:
                                                                  [NSNumber numberWithInt:4],[NSNumber numberWithInt:14],
                                                                  [NSNumber numberWithInt:9],[NSNumber numberWithInt:31],
                                                                  [NSNumber numberWithInt:20],[NSNumber numberWithInt:38],
                                                                  [NSNumber numberWithInt:28],[NSNumber numberWithInt:84],
                                                                  [NSNumber numberWithInt:40],[NSNumber numberWithInt:59],
                                                                  [NSNumber numberWithInt:51],[NSNumber numberWithInt:67],
                                                                  [NSNumber numberWithInt:63],[NSNumber numberWithInt:81],
    
                                                                  [NSNumber numberWithInt:17],[NSNumber numberWithInt:7],
                                                                  [NSNumber numberWithInt:64],[NSNumber numberWithInt:60],
                                                                  [NSNumber numberWithInt:89],[NSNumber numberWithInt:26],
                                                                  [NSNumber numberWithInt:95],[NSNumber numberWithInt:75],
                                                                  [NSNumber numberWithInt:99],[NSNumber numberWithInt:78],  nil];
        
    }
    return self;
}
-(void) roll{
    NSInteger result = arc4random_uniform(7) + 1;
    _currentSquare += result;
    NSNumber *myNum = [NSNumber numberWithInteger: _currentSquare];
    NSLog(@"You rolled a: %ld", result);
    NSLog(@"You landed on: %@", myNum);
    for (NSNumber *key in _gameLogic) {
        if([myNum isEqualToNumber:key]){
            NSLog(@"JUMP");
            myNum = _gameLogic[key];
            _currentSquare = [myNum integerValue];
            NSLog(@"You jumped to %@",myNum);
        }
    }
    if ([myNum integerValue] >= 100) {
        NSLog(@"Game over");
    }
    
}

@end

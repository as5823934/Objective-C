//
//  Dice.m
//  Assignment6
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)initWithValue: (NSInteger) value
{
    self = [super init];
    if (self) {
        _value = value;
        _isHeld = NO;
    }
    return self;
}

- (void) roll{
    _value = arc4random_uniform(6) + 1;
}

- (NSString *)description//tostring method
{
    NSString *die;
    switch (_value) {
        case 1:
            die = _isHeld? @"[⚀]" : @"⚀";
            break;
        case 2:
            die = _isHeld? @"[⚁]" : @"⚁";
            break;
        case 3:
            die = _isHeld? @"[⚂]" : @"⚂";
            break;
        case 4:
            die = _isHeld? @"[⚃]" : @"⚃";
            break;
        case 5:
            die = _isHeld? @"[⚄]" : @"⚄";
            break;
        case 6:
            die = @"⚅";
            break;
            
        default:
            break;
    }
    return die;
}



@end

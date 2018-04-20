//
//  Scorekeeper.m
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Scorekeeper.h"

@implementation Scorekeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rights = 0;
        _wrongs = 0;
    }
    return self;
}

- (void) displayResult{
    
    CGFloat percentage = (CGFloat)_rights / (_wrongs + _rights) * 100;
    NSLog(@"Score: %ld right, %ld worong ----%.2f%%", _rights, _wrongs, percentage);
}

@end

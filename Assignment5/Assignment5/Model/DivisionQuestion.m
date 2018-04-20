//
//  DivisionQuestion.m
//  Assignment5
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{//overriding the superclass
    [super setQuestion:[NSString stringWithFormat:@"%ld / %ld = ", [super leftValue], [super rightValue]]];
    [super setAnswer: ([super leftValue] / [super rightValue])];
}

@end

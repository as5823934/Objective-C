//
//  MyStringInput.m
//  Assignment13
//
//  Created by ping tseng tsai on 2018-04-30.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "MyStringInput.h"

@implementation MyStringInput

-(NSString *)stringByPigLatinization: (NSString*) string{
    
    NSArray *consonants = @[@"b", @"c", @"d", @"f", @"g", @"h", @"j", @"k", @"l", @"m", @"n", @"p", @"q", @"r", @"s", @"t", @"v", @"w", @"x", @"z"];

    NSMutableArray *arrayToString = [[string componentsSeparatedByString:@" "] mutableCopy];
    NSMutableArray *arrayBackToString = [NSMutableArray new];
    
    for (NSString *each in arrayToString) {
        NSMutableArray *arrayOfConsonantsToAppend = [[NSMutableArray alloc] init];
        NSString *consonantsToAppend;
        NSString *previousCharacter = @"";
        NSString *lastVersionOfWord;
        
        for (NSInteger charIdx=0; charIdx<each.length; charIdx++) {
            
            NSString *currentCharacter = [each substringWithRange:NSMakeRange(charIdx,1)];
            
            if ([consonants containsObject:currentCharacter] && ![consonants containsObject:previousCharacter]) {
                [arrayOfConsonantsToAppend addObject:currentCharacter];
                consonantsToAppend = [arrayOfConsonantsToAppend componentsJoinedByString:@""];
                
                NSMutableArray *eachLetterOfCurrentWord = [[NSMutableArray alloc] initWithCapacity:[each length]];
                
                for (int i=0; i < [each length]; i++) {
                    NSString *ichar  = [NSString stringWithFormat:@"%c", [each characterAtIndex:i]];
                    [eachLetterOfCurrentWord addObject:ichar];
                }
                
                [eachLetterOfCurrentWord removeObject:currentCharacter];
                previousCharacter = currentCharacter;
                lastVersionOfWord = [eachLetterOfCurrentWord componentsJoinedByString:@""];
            }
        }
        NSString *totalStringToAppend = [consonantsToAppend stringByAppendingString:@"ay"];
        NSString *singleWord = [lastVersionOfWord stringByAppendingString:totalStringToAppend];
        [arrayBackToString addObject:singleWord];
    }
    
    
    NSString *result = [arrayBackToString componentsJoinedByString:@" "];
    return result;
}

@end

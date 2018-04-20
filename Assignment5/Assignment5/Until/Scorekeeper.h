//
//  Scorekeeper.h
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
//unsighed int - only postivitve;

@interface Scorekeeper : NSObject
@property (nonatomic, assign) NSInteger rights;
@property (nonatomic, assign) NSInteger wrongs;
-(instancetype) init;

- (void) displayResult;

@end

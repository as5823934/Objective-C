//
//  Player.h
//  Assignment14
//
//  Created by ping tseng tsai on 2018-05-01.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property(nonatomic, assign) NSInteger currentSquare;
@property(nonatomic, strong) NSDictionary *gameLogic;
@property(nonatomic, strong) NSString *output;
-(void) roll;
@property(nonatomic, assign) BOOL gameOVer;

@end

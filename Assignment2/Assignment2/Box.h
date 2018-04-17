//
//  Box.h //public class
//  Assignment2
//
//  Created by ping tseng tsai on 2018-04-16.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height; //assign: premitive type -int float double
@property (nonatomic, assign) float width;  //strong : object type- NSString
@property (nonatomic, assign) float length;
-(instancetype) initWithWidth: (float) w andHeight: (float) h andLength:(float) l;
-(float) volume;
-(float) ratio: (Box *) box;

@end

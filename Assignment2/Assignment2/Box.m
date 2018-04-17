//
//  Box.m //privte class
//  Assignment2
//
//  Created by ping tseng tsai on 2018-04-16.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype) initWithWidth: (float) w andHeight: (float) h andLength:(float) l{
    self = [super init];
    if(self){
        _width = w;
        _height = h;
        _length = l;
    }
    return self;
    
}

-(float) volume{
    //this.width == _width;
    //this.getHeight() == self.height;
    return _width * _height * _length; //
}

-(float) ratio: (Box *) box{
    return [self volume] / [box volume];  //my box and another box
}

@end

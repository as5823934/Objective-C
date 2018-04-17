//
//  main.m
//  class has main method
//  Assignment2
//
//  Created by ping tseng tsai on 2018-04-16.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5]; //125
        Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:1]; // 25
        NSLog(@"Volume of box 1 is %.2f", [box1 volume]);
        NSLog(@"Box1 can fit %.2f in Box2", [box1 ratio: box2]);
        
    }
    return 0;
}

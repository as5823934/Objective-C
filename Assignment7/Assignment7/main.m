//
//  main.m
//  Assignment7
//
//  Created by ping tseng tsai on 2018-04-23.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Alex" andGender:MALE andAge:21 andHasHealthCard:NO andSymptoms:@"Can't Sleep"];
        
        Patient *p2 = [[Patient alloc] initWithName:@"Miho" andGender:FEMALE andAge:26 andHasHealthCard:YES andSymptoms:@"Sleep too much"];
        
        Patient *p3 = [[Patient alloc] initWithName:@"Elif" andGender:FEMALE andAge:26 andHasHealthCard:YES andSymptoms:@"Too hard work"];
        
        Doctor *d1 = [[Doctor alloc] initWithName:@"Kana" andSpectialty:@"Brain Surgeon"];
        Doctor *d2 = [[Doctor alloc] initWithName:@"Hunter" andSpectialty:@"General Doctor"];
        
        
        //user story
        //patient can visit doctor
        if([p2 visitDoctor: d1]){
            NSLog(@"SUCCESS");
            [d1 checkPreviousDoctor:p2];
            [d1 writePrescriptions:p2];
        }else{
            NSLog(@"SYSTEM: FAIL TO VISIT");
        }
        
        if([p2 visitDoctor: d2]){
            NSLog(@"SUCCESS");
            [d2 checkPreviousDoctor:p2];
            [d2 writePrescriptions:p2];
        }else{
            NSLog(@"SYSTEM: FAIL TO VISIT");
        }
        //Doctor can accept only when patient has helth card
        
    }
    return 0;
}

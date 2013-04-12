//
//  StaticBrick.m
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "StaticBrick.h"


@implementation StaticBrick

-(Brick*)initWithWorld:(b2World *)world
{
   
    if(self = [super initWithWorld:world])
    {
        bricks = [CCSprite spriteWithFile:@"Sky_Blue.png" rect:CGRectMake(0,0,36,36) ];
        NSLog(@"aaaaaa");
        
        
    }
    
    return self;
    
    
        
}

@end

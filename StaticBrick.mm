//
//  StaticBrick.m
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "StaticBrick.h"


@implementation StaticBrick

-(StaticBrick*)initWithWorld:(b2World *)world
{
   
    if(self = [super init])
    {
        
      block= [[Brick alloc] initWithWorld:world withRect:CGRectMake(0,0,20,30)];
        self.contentSize = CGSizeMake(20,30);
        
        
        NSLog(@"aaaaaa");
        [self addChild:block];
        
        
    }
    
    return self;
    
    
        
}







@end

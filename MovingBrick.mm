//
//  MovingBrick.m
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "MovingBrick.h"


@implementation MovingBrick
-(MovingBrick*)initWithWorld: (b2World*)world2
{
    
    if (self = [super initWithWorld:world2])
    {
    
        
        
        paddle = [CCSprite spriteWithFile:@"Sky_Blue.png" rect:CGRectMake(0, 0, 45, 20)];
        
      
        
    }
    
    
    
    return self;
    
    
    
}





@end

//
//  Brick.mm
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Brick.h"


@implementation Brick
@synthesize world;

-(Brick*)initWithWorld: (b2World*)world2
{
    if (self=[super initWithFile:@"Sky_Blue.png" rect:CGRectMake(0, 0, 45, 20)])
    {
    
        
        self.world = world2;
        
        
    }
    
    return self;
}

@end

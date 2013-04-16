//
//  MovingBrick.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Brick.h"
#import "Box2D.h"

@interface MovingBrick: CCLayer{
    
    
    Brick*paddle;
    b2Body *_paddleBody;   
    
    
    
}
-(MovingBrick*)initWithWorld: (b2World*)world;

-(b2Body*)PaddleBody;

@end

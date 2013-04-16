//
//  BrickManager.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "StaticBrick.h"
#import "Box2D.h"
#define PTM_RATIO 32.0

@interface BrickManager : CCLayer {
    
    StaticBrick*block;
    StaticBrick*block2;
    StaticBrick*block3;
    StaticBrick*block4;
    b2Body *block3Body;
    b2Body *block2Body;
    b2Body *blockBody;
    
    
    
}

-(BrickManager*)initWithWorld:(b2World*)world;


@end

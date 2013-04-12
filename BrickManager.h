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
    
    
}

-(BrickManager*)initWithWorld:(b2World*)world;


@end

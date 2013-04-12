//
//  Brick.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Box2D.h"
#define PTM_RATIO 32.0

@interface Brick : CCSprite{
    
    int x, y;

    
}

-(Brick*)initWithWorld: (b2World*)world;
-(void)paddleMake;
@property(nonatomic)b2World*world;
@end

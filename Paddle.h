//
//  Paddle.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/10/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Box2D.h"
#define PTM_RATIO 32.0

@interface Paddle : CCLayer {
    
    
    b2Body *_paddleBody;
    b2Body *_groundBody;
    CCSprite*paddle;
    
}

-(Paddle*)initWithWorld:(b2World*)world;
-(b2Body)PaddleBody;
@end

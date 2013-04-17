//
//  Ball.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/10/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Box2D.h"
#define PTM_RATIO 32.0

@interface Ball : CCLayer {
   
    CCSprite*ball;
    b2World *world;
    b2Body *ballBody;
    b2Fixture *_ballFixture;    
}
-(Ball*)initWithWorld: (b2World*)world;
-(id)Stop;
-(b2Fixture *)ballFixture;
-(CCSprite*)walaLang;


@property(nonatomic, strong)CCSprite*ball;



@end

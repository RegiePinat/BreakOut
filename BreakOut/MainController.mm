//
//  HelloWorldLayer.mm
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/10/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

// Import the interfaces
#import "MainController.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#import "PhysicsSprite.h"


@implementation MainController

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	MainController *layer = [MainController node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
    
    if (self = [super init])
        
    {
        
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        b2Vec2 gravity = b2Vec2 (0.0f, 0.0f);
        
        world = new b2World(gravity);
        
        bola = [[Ball alloc]initWithWorld:world];
        paddle = [[Paddle alloc]initWithWorld:world];
        bricks = [[Bricks alloc]initWithWorld:world];
        guiLabels = [[GUILabels alloc]init];
        

        
		
        [self addChild:bola];
        
        [self addChild:paddle];
        
        [self addChild:bricks];
        
        [self addChild:guiLabels];
        
        [self schedule:@selector(tick:)];
       
        
      
        paddle.isAccelerometerEnabled= YES;
        
        
        
        
       if (CGRectIntersectsRect(guiLabels.boundingBox, bola.boundingBox))
       {
           
           
           NSLog (@"aaaaaaa");
           
           
           
           
           
       }
        
       
        
        
        
        
        
	
}
    return self;
}

-(void)tick:(ccTime) dt {
    
    world->Step(dt, 10, 10);
    for(b2Body *b = world->GetBodyList(); b; b=b->GetNext()) {
        if (b->GetUserData() != NULL) {
            CCSprite *ballData = (CCSprite *)b->GetUserData();
            ballData.position = ccp(b->GetPosition().x * PTM_RATIO,
                                    b->GetPosition().y * PTM_RATIO);
            ballData.rotation = -1 * CC_RADIANS_TO_DEGREES(b->GetAngle());
            
            
            
            
           
            }
    }
    
}





-(void) dealloc
{
    delete world;
    
    world = NULL;
    
	[super dealloc];
}	

@end

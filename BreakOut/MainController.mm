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
        //bricks = [[Bricks alloc]initWithWorld:world];
        guiLabels = [[GUILabels alloc]init];
        paddle = [[MovingBrick alloc]initWithWorld:world];
        brickManager = [[BrickManager alloc]initWithWorld:world];

        b2Body *_groundBody;

    
        b2Fixture *_paddleFixture;
        b2BodyDef paddleBodyDef;
        
        paddleBodyDef.type = b2_dynamicBody;
        paddleBodyDef.position.Set(winSize.width/2/PTM_RATIO, 100/PTM_RATIO);
        paddleBodyDef.userData=paddle;
        _paddleBody = world->CreateBody(&paddleBodyDef);
        
        
        b2PolygonShape paddleShape;
        paddleShape.SetAsBox(paddle.contentSize.width/PTM_RATIO,paddle.contentSize.height/PTM_RATIO);
        
        b2FixtureDef paddleShapeDef;
        paddleShapeDef.shape = &paddleShape;
        paddleShapeDef.density = 10.0f;
        paddleShapeDef.friction=0.4f;
        paddleShapeDef.restitution = 1.0f;
        _paddleFixture = _paddleBody->CreateFixture(&paddleShapeDef);
        
    
        b2Fixture *_bottomFixture;
        b2BodyDef groundBodyDef;
        groundBodyDef.position.Set(0,0);
        _groundBody = world->CreateBody(&groundBodyDef);
        
        b2EdgeShape groundBox;
        b2FixtureDef groundBoxDef;
        groundBoxDef.shape = &groundBox;
        
        
        groundBox.Set(b2Vec2(0,0), b2Vec2(winSize.width/PTM_RATIO, 0));
        _bottomFixture = _groundBody->CreateFixture(&groundBoxDef);
        
        
        groundBox.Set(b2Vec2(0,0), b2Vec2(0,winSize.height/PTM_RATIO));
        _groundBody->CreateFixture(&groundBoxDef);
        
        groundBox.Set(b2Vec2(0,winSize.height/PTM_RATIO), b2Vec2(winSize.width/PTM_RATIO, winSize.height/PTM_RATIO));
        _groundBody->CreateFixture(&groundBoxDef);
        
        
        groundBox.Set(b2Vec2(winSize.width/PTM_RATIO, winSize.height/PTM_RATIO), b2Vec2(winSize.width/PTM_RATIO,0));
        _groundBody->CreateFixture(&groundBoxDef);
        
        
        b2PrismaticJointDef jointDef;
        b2Vec2 worldAxis(1.0f,0.0f);
        jointDef.collideConnected=true;
        jointDef.Initialize(_paddleBody, _groundBody, _paddleBody->GetWorldCenter(), worldAxis);
        world->CreateJoint(&jointDef);
    
        
        gameElements = [[GameElements alloc]init];
        [gameElements startTimer];
        
        [gameElements schedule:@selector(startTimer)interval:1.0];
        
        [guiLabels setTimeLabel:[gameElements startTimer]];
        
    
		
        [self addChild:bola];
        
        [self addChild:paddle];
        
        [self addChild:guiLabels];
        
        [self schedule:@selector(tick:)];
        
        [self addChild:brickManager];
      
        self.isAccelerometerEnabled= YES;
        
	
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

  /*
    std::vector<b2Body *>toDestroy;
    std::vector<MyContact>::iterator pos;
    for (pos=myContactListener->_contacts.begin();
         pos != myContactListener->_contacts.end(); ++pos) {
        MyContact contact = *pos;
    }
*/





}








-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    
    
    
    
    
    _paddleBody->SetLinearVelocity(b2Vec2(15*acceleration.x,0.0f));
    
    
    
    
    
    
}

-(void) dealloc
{
    delete world;
    
    world = NULL;
    
	[super dealloc];
}	

@end

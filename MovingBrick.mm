//
//  MovingBrick.m
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "MovingBrick.h"


@implementation MovingBrick
-(MovingBrick*)initWithWorld: (b2World*)world
{
    
    if ((self = [super init]))
    {
        
        paddle = [[Brick alloc] initWithWorld:world withRect:CGRectMake(0,0,20,20)];
        
        
        [self addChild:paddle];
        
        
        
        //b2Body *_groundBody;
        
        //CGSize winSize = [CCDirector sharedDirector].winSize;
        
        
        /*
        
        
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
       
        
       
    */
        
     
        
    }
    
    
    
    return self;
    
    
    
}

/*
-(b2Body*)PaddleBody
{
    
    return _paddleBody;
    
    
    
    
}
 
 
 -(b2Fixture *) bottomFixture
{
    
    
    return _bottomFixture;
    
}

*/





@end

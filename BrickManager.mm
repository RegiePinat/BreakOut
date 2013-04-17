//
//  BrickManager.mm
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "BrickManager.h"


@implementation BrickManager

-(BrickManager*)initWithWorld:(b2World*)world
{
    
    
    
    
    b2BodyDef block3BodyDef;
    b2BodyDef block2BodyDef;
    b2BodyDef blockBodyDef;
    
    
    
    if (self=[super init])
    {
        
        for (int i = 0; i<10; i++)
        {
            static int padding=0;
            
            
            block = [[StaticBrick alloc]initWithWorld:world];
            int xOffset = padding+block.contentSize.width+((block.contentSize.width+padding)*i);
            NSLog(@"......%d", xOffset);
            
            block.position = ccp(xOffset, 300);
            block.tag = 2;
            [self addChild:block];
            
            
            //create block body
            b2BodyDef blockBodyDef;
            blockBodyDef.type = b2_staticBody;
            blockBodyDef.position.Set(xOffset/PTM_RATIO, 310/PTM_RATIO);
            blockBodyDef.userData=block;
            b2Body *blockBody = world->CreateBody(&blockBodyDef);
            
            
            //blockshape
            
            b2PolygonShape blockShape;
            blockShape.SetAsBox(block.contentSize.width/PTM_RATIO, block.contentSize.height/PTM_RATIO);
            
            
            
            //shape definition
            
            b2FixtureDef blockShapeDef;
            blockShapeDef.shape = &blockShape;
            blockShapeDef.density=10.0;
            blockShapeDef.friction = 0.0;
            blockShapeDef.restitution=1.0f;
            blockBody->CreateFixture(&blockShapeDef);
            
            
            
            
        }
        
        
        
        
        
        
        
        
        for (int i = 0; i<10; i++)
        {
            static int padding=0;
            
            
            block2 = [[StaticBrick alloc]initWithWorld:world];
            int xOffset = padding+block2.contentSize.width+((block2.contentSize.width+padding)*i);
            block2.position = ccp(xOffset, 350);
            block2.tag = 2;
            [self addChild:block2];
            
            
            //create block body
            b2BodyDef block2BodyDef;
            block2BodyDef.type = b2_staticBody;
            block2BodyDef.position.Set(xOffset/PTM_RATIO, 330/PTM_RATIO);
            block2BodyDef.userData=block2;
            b2Body *block2Body = world->CreateBody(&block2BodyDef);
            
            
            //blockshape
            
            b2PolygonShape block2Shape;
            block2Shape.SetAsBox(block2.contentSize.width/PTM_RATIO, block2.contentSize.height/PTM_RATIO);
            
            
            
            //shape definition
            
            b2FixtureDef block2ShapeDef;
            block2ShapeDef.shape= &block2Shape;
            block2ShapeDef.density=10.0;
            block2ShapeDef.friction = 0.0;
            block2ShapeDef.restitution=1.0f;
            block2Body->CreateFixture(&block2ShapeDef);
            
            
            
            
        }
        
        for (int i = 0; i<10; i++)
        {
            static int padding=0;
            
            
            block3 = [[StaticBrick alloc]initWithWorld:world];
            int xOffset = padding+block3.contentSize.width+((block3.contentSize.width+padding)*i);
            block3.position = ccp(xOffset, 390);
            block3.tag = 2;
            [self addChild:block3];
            
            
            //create block body
            b2BodyDef block3BodyDef;
            block3BodyDef.type = b2_staticBody;
            block3BodyDef.position.Set(xOffset/PTM_RATIO, 350/PTM_RATIO);
            block3BodyDef.userData=block3;
            b2Body *block3Body = world->CreateBody(&block3BodyDef);
            
            
            //blockshape
            
            b2PolygonShape block3Shape;
            block3Shape.SetAsBox(block3.contentSize.width/PTM_RATIO, block3.contentSize.height/PTM_RATIO);
            
            
            
            //shape definition
            
            b2FixtureDef block3ShapeDef;
            block3ShapeDef.shape = &block3Shape;
            block3ShapeDef.density=10.0;
            block3ShapeDef.friction = 0.0;
            block3ShapeDef.restitution=1.0f;
            block3Body->CreateFixture(&block3ShapeDef);
            
            
            
            
        }

    }
    
        
    


    return self;
    
}


-(StaticBrick*)returnBlock
{
    return block;
    
    
}






@end

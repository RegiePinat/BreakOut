//
//  HelloWorldLayer.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/10/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "Box2D.h"
#import "GLES-Render.h"
#define PTM_RATIO 32.0
#import "Ball.h"
#import "Paddle.h"
#import "Bricks.h"
#import "GUILabels.h"
#import "GameElements.h"
#import "Brick.h"
#import "MovingBrick.h"



@interface MainController : CCLayer 
{
	
	b2World* world;
	Ball*bola;
    Bricks*bricks;
    GUILabels*guiLabels;
    GameElements*gameElements;
    Brick*paddle2;
    MovingBrick*paddle;
    b2Body *_paddleBody;    
    
    
}

+(CCScene *) scene;
@property (nonatomic, strong)Ball*bola;
@property(nonatomic, strong)Paddle*paddle;

@end

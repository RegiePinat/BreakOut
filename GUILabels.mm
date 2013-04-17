//
//  GUILabels.m
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/10/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "GUILabels.h"
#import "cocos2d.h"


@implementation GUILabels
-(id)init
{
    
    if (self = [super init])
    {
        
        //gameElements = [[GameElements alloc]init];
        
        
        lifeSprite1= [CCSprite spriteWithFile:@"star.png"];
        lifeSprite1.position=ccp(30,420);
        [self addChild:lifeSprite1];
        
    
        
        lifeSprite2= [CCSprite spriteWithFile:@"star.png"];
        lifeSprite2.position = ccp(60, 420);
        [self addChild:lifeSprite2];
        
        lifeSprite3= [CCSprite spriteWithFile:@"star.png"];
        lifeSprite3.position = ccp(90, 420);
        [self addChild:lifeSprite3];
        
        
        title = [CCLabelTTF labelWithString:@"Level 1" fontName:@"Marker Felt" fontSize:40];
        title.position = ccp(155, 450);
        [self addChild:title];
    
        
        CCLabelTTF *scorey = [CCLabelTTF labelWithString:@"Score: " fontName:@"Marker Felt" fontSize:25.0];
        scorey.position = ccp(250, 50);
        [self addChild:scorey];
        
        
        powerUpLabel = [CCLabelTTF labelWithString:@"0" fontName:@"Marker Felt" fontSize:25.0];
		[powerUpLabel setPosition:ccp(60, 50)];
		[powerUpLabel setColor:ccc3(255, 255, 255)];
		[self addChild:powerUpLabel z:3];
        
        CCLabelTTF *powerey = [CCLabelTTF labelWithString:@"PP: " fontName:@"Marker Felt" fontSize:25.0];
        powerey.position = ccp(30, 50);
        [self addChild:powerey];
        
         timeLabel = [[CCLabelTTF labelWithString:@"30"dimensions:CGSizeMake(130, 27)hAlignment:kCCTextAlignmentCenter fontName:@"Marker Felt" fontSize:25.0]retain];
        
        timeLabel.position = ccp(155, 425);
        
        
        
        
        [self addChild:timeLabel z:3 tag:timeCount];
       
        
        
        
    }
    return self;
    
}

-(id)setScoreString:(int)score
{
    
     scoreLabel = [CCLabelTTF labelWithString:@"0" fontName:@"Marker Felt" fontSize:25.0];
    [scoreLabel setPosition:ccp(300, 50)];
    [scoreLabel setColor:ccc3(255, 255, 255)];
    [self addChild:scoreLabel z:3];
   
    
    [scoreLabel setString:[NSString stringWithFormat:@"%i", score]];
    
   
    
    NSLog(@"mmmmm");
    return  scoreLabel;
    
    
    
    
}
-(void)setPowerUpstring:(int)powerUpInt
{
    [powerUpLabel setString:[NSString stringWithFormat:@"  %d", powerUpInt]];
    
}
-(void)setTimeLabel:(int)secs
{
    
    //secs = [gameElements startTimer];
    
    
   [timeLabel setString:[NSString stringWithFormat:@"%02d", secs]];
    
}

-(CCSprite*)powerUpTrigger

{
    powerUp = [CCSprite spriteWithFile:@"thunder.png" rect:CGRectMake(0,0,36,36)];
    powerUp.contentSize = CGSizeMake(36, 36);
    
    
    
    
    return powerUp;
   
}

-(void)decreaseLife1
{
    
if (lifeSprite3.visible == YES)
{
    lifeSprite3.visible = NO;
    
}
else if (lifeSprite3.visible == NO && lifeSprite2.visible == YES)
{
    lifeSprite2.visible=NO;
    
}
else
{
    lifeSprite1.visible=NO;
    
    
    
}
}


@end

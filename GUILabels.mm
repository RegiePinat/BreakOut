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
        
        
        
        lifeSprite1= [CCSprite spriteWithFile:@"star.png"];
        lifeSprite1.position=ccp(100,100);
        [self addChild:lifeSprite1];
        
    
        
        lifeSprite2= [CCSprite spriteWithFile:@"star.png"];
        lifeSprite3= [CCSprite spriteWithFile:@"star.png"];
        powerUp = [CCSprite spriteWithFile:@"LifeHeart.png"];
        
        
        title = [CCLabelTTF labelWithString:@"Level 1" fontName:@"Marker Felt" fontSize:40];
        title.position = ccp(155, 450);
        [self addChild:title];
        
        
        scoreLabel = [CCLabelTTF labelWithString:@"0" fontName:@"Marker Felt" fontSize:25.0];
		[scoreLabel setPosition:ccp(280, 50)];
		[scoreLabel setColor:ccc3(255, 255, 255)];
		[self addChild:scoreLabel z:3];
        
        CCLabelTTF *scorey = [CCLabelTTF labelWithString:@"Score: " fontName:@"Marker Felt" fontSize:25.0];
        scorey.position = ccp(230, 50);
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
        
        [self addChild:timeLabel];
       
        
        
        
    }
    return self;
    
}

-(void)setScoreString:(int)score
{
    
    [scoreLabel setString:[NSString stringWithFormat:@"%i", score]];
    
}
-(void)setPowerUpstring:(int)powerUpInt
{
    [powerUpLabel setString:[NSString stringWithFormat:@"  %d", powerUpInt]];
    
}
-(void)setTimeLabel:(int)secs
{
    
   [timeLabel setString:[NSString stringWithFormat:@"%02d", secs]];
    
}


@end

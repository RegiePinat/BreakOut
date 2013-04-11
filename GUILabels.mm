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
        
        
        
    }
    return self;
    
}

@end

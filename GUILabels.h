//
//  GUILabels.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/10/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


@class GameElements;


@interface GUILabels : CCLayer {
    
    
    
    
    CCSprite *lifeSprite1;
    CCLabelTTF *timeLabel;
    CCLabelTTF *scoreLabel;
    CCLabelTTF *pauseLabel;
    CCSprite *lifeSprite2;
    CCSprite *lifeSprite3;
    CCMenuItemFont *pauseMenuItem;
    CCSprite *powerUp;
    CCLabelTTF *title;
    CCLabelTTF *powerUpLabel;
    
    
    
    int timeCount;
    
    //
}

-(id)setScoreString:(int)score;
-(void)setPowerUpstring:(int)powerUp;
-(void)setTimeLabel:(int)secs;
-(void)decreaseLife1;
-(CCSprite*)powerUpTrigger;



@property(nonatomic, strong)CCSprite *lifeSprite;
@property(nonatomic, strong)CCLabelTTF *timeLabel;
@property(nonatomic, strong)CCLabelTTF *scoreLabel;
@property(nonatomic, strong)CCLabelTTF *pauseLabel;
@property(nonatomic, strong)CCSprite *lifeSprite1;
@property(nonatomic, strong)CCSprite *lifeSprite2;
@property(nonatomic, strong)CCSprite *lifeSprite3;
@property(nonatomic, strong)CCMenuItemFont *pauseMenuItem;
@property(nonatomic, strong)CCSprite *powerUp;

@end

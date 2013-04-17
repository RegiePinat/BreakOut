//
//  GameElements.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "GUILabels.h"


@interface GameElements : CCLayer {
    
    

    int powerUpInt;
    int timeInt;
    int mins;
    int seconds;
    int timerInt;
    int score;
    
  
    GUILabels *labels;
}
-(int)startTimer;
-(int)addPowerUp;
-(int)addScore;


@end

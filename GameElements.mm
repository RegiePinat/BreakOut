//
//  GameElements.mm
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "GameElements.h"


@implementation GameElements


-(id)init
{
    if(self=[super init]){
        
        
        
        timeInt = 60;
        
        
        [self schedule:@selector(startTimer)interval:1.0];
        
        
        
        
    }
    
    
    
    
}

-(int)startTimer{
    
    
    
    timeInt--;
    
    
    
    seconds = timeInt %30;
    mins = timeInt/60;
    
    return timeInt;
    
    
    if (timeInt <=0) {
        [self unschedule:@selector(startTimer)];
    }
    
    
    
    
}
-(void)addPowerUp

{
    powerUpInt++;
    
    [gui setPowerUpstring:powerUpInt];
    
    
    
}
-(void)addScore
{
    
    
    score =+10;
    [gui setScoreString:score];
    
    
    
}

@end

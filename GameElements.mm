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
        
        powerUpInt =0;
        score = 0;
        
        
        
    
        labels = [[GUILabels alloc]init];
        
        
        
        //[self schedule:@selector(startTimer)interval:1.0];
        
              
        
    }
    
    
    
    
}

-(int)startTimer{
    
    
    
    timeInt--;
    
    
    
   seconds = timeInt %30;
    
    
    [labels setTimeLabel:seconds];
    
    NSLog(@"zzzzzzxxxxxxxxxx");
    
    
    
    if (timeInt <=0) {
        [self unschedule:@selector(startTimer)];
    }
    
      return timeInt;
    
    
    
}
-(int)addPowerUp

{
    powerUpInt++;
    
    [labels setPowerUpstring:powerUpInt];
    
    return powerUpInt;
    
    
   
    
    
    
}
-(int)addScore
{
  
    
    score = score +10;
    
    [labels setScoreString:score];
    
    NSLog(@">>>>>>>>>>>>>>");
    
    return score;
    
    
    
}

@end

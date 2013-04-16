//
//  StaticBrick.h
//  BreakOut
//
//  Created by Charles Marlon G. Ramones on 4/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Brick.h"

@interface StaticBrick: CCLayer{
    
    
    
    Brick*block;
    
    
    
    
}
-(StaticBrick*)initWithWorld:(b2World*)world;
-(CCSprite *)walaLang;


@end

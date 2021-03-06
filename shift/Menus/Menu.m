//
//  Menu.m
//  shift
//
//  Created by Greg McLain on 2/15/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "Menu.h"
#import "MainMenu.h"

@implementation Menu


-(id) init
{
    if( (self=[super init] )) {
        
    }
    return self;
}

//Create scene with the given layer
+(id) scene:(CCLayer*) layer
{
    CCScene *scene = [CCScene node];
    [scene addChild: layer];
    return scene;
}

- (void) goBack: (id) sender
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:TRANS_TIME scene:[MainMenu scene]]];
}

-(void) dealloc
{
	[super dealloc];
}

@end

//
//  CellSprite.m
//  shift
//
//  Created by Brad Misik on 2/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CellSprite.h"

@implementation CellSprite

@synthesize board;
@synthesize row, column;
@synthesize comparable, moveable;
@synthesize name;

+(id) cellWithFilename:(NSString *)filename
{
    CCTexture2D *texture = [[CCTextureCache sharedTextureCache] addImage:filename];
    CellSprite *cell = [self spriteWithTexture:texture];
    cell.comparable = YES;
    cell.moveable = YES;
    cell.name = nil;
    cell.board = nil;
    return cell;
}

-(CGPoint) resize:(CGSize)size
{
    self.scaleX = size.width / CGRectGetWidth([self boundingBox]);
    self.scaleY = size.height / CGRectGetHeight([self boundingBox]);
    return CGPointMake(self.scaleX, self.scaleY);
}

-(CGSize) scaleWithFactors:(CGPoint)factors
{
    self.scaleX = factors.x;
    self.scaleY = factors.y;
    return [self boundingBox].size;
}

-(BOOL) onTouch
{
    return NO;
}

@end

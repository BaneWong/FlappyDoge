//
//  NewGameScene.m
//  Flappy Doge
//
//  Created by Justin Bush on 2/14/14.
//  Copyright (c) 2014 Justin Bush. All rights reserved.
//  Based on Nathan Borror's FlapFlap. All credit goes to him.
//  Based on Flappy Doge by the guys over at Doge Tek.
//

#import "NewGameScene.h"
#import "MainScene.h"

@implementation NewGameScene {
  SKSpriteNode *_button;
}

- (id)initWithSize:(CGSize)size
{
  if (self = [super initWithSize:size]) {
    [self setBackgroundColor:[SKColor colorWithRed:0.00 green:0.80 blue:1.00 alpha:1.0]];

    _button = [SKSpriteNode spriteNodeWithColor:[SKColor colorWithWhite:1 alpha:1] size:CGSizeMake(128, 32)];
    [_button setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
    [self addChild:_button];
  }
  return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  SKTransition *transition = [SKTransition doorsCloseHorizontalWithDuration:.4];
  MainScene *main = [[MainScene alloc] initWithSize:self.size];
  [self.scene.view presentScene:main transition:transition];
}

@end

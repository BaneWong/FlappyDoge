//
//  ViewController.m
//  Flappy Doge
//
//  Created by Justin Bush on 2/14/14.
//  Copyright (c) 2014 Justin Bush. All rights reserved.
//  Based on Nathan Borror's FlapFlap. All credit goes to him.
//  Based on Flappy Doge by the guys over at Doge Tek.
//

#import "ViewController.h"
#import "NewGameScene.h"

@implementation ViewController

- (void)loadView
{
  self.view  = [[SKView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
}

- (void)viewDidLoad
{
  [super viewDidLoad];

  [self.view setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];

  SKView *skView = (SKView *)[self view];
  [skView setShowsFPS:NO];
  [skView setShowsNodeCount:NO];

  SKScene *scene = [NewGameScene sceneWithSize:skView.bounds.size];
  [scene setScaleMode:SKSceneScaleModeAspectFill];

  [skView presentScene:scene];
}

@end

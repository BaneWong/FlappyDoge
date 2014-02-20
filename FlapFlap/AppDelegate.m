//
//  AppDelegate.m
//  Flappy Doge
//
//  Created by Justin Bush on 2/14/14.
//  Copyright (c) 2014 Justin Bush. All rights reserved.
//  Based on Nathan Borror's FlapFlap. All credit goes to him.
//  Based on Flappy Doge by the guys over at Doge Tek.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

  ViewController *viewController = [[ViewController alloc] init];
  [_window setRootViewController:viewController];

  [_window setBackgroundColor:[UIColor whiteColor]];
  [_window makeKeyAndVisible];
  return YES;
}

@end

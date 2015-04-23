//
//  AppDelegate.m
//  LiveAutoLayout
//
//  Created by Sam Lau on 4/23/15.
//  Copyright (c) 2015 Sam Lau. All rights reserved.
//

#import "AppDelegate.h"
#import <Classy/Classy.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{

#if TARGET_IPHONE_SIMULATOR
    NSString* absoluteFilePath = CASAbsoluteFilePath(@"stylesheet.cas");
    [CASStyler defaultStyler].watchFilePath = absoluteFilePath;
#endif

    return YES;
}

@end

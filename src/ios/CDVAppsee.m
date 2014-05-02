//
//  CDVAppsee.m
//
//  Copyright (c) 2014 Reallyenglish. All rights reserved.
//

#import "CDVAppsee.h"
#import <Appsee/Appsee.h>
#import <Foundation/NSException.h>

@implementation CDVAppsee

- (void)init:(CDVInvokedUrlCommand *)command
{
    NSString *key = [command.arguments objectAtIndex:0];
    
    [Appsee start:key];
}

- (void)startScreen:(CDVInvokedUrlCommand *)command
{
    NSString *screenName= [command.arguments objectAtIndex:0];
    
    NSLog(@"screenName: %@", screenName);

    [Appsee startScreen:screenName];
}

@end

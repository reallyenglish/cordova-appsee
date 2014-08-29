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

    [Appsee startScreen:screenName];
}

- (void)markViewAsSensitive:(CDVInvokedUrlCommand *)command
{
    UIView *view= [self webView];

    [Appsee markViewAsSensitive:view];
}

- (void)unmarkViewAsSensitive:(CDVInvokedUrlCommand *)command
{
    UIView *view= [self webView];

    [Appsee unmarkViewAsSensitive:view];
}

@end

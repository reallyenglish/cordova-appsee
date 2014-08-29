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

- (void)stopAndUpload:(CDVInvokedUrlCommand *)command
{
    [Appsee stopAndUpload];
}

- (void)pause:(CDVInvokedUrlCommand *)command
{
    [Appsee pause];
}

- (void)resume:(CDVInvokedUrlCommand *)command
{
    [Appsee resume];
}

- (void)addEvent:(CDVInvokedUrlCommand *)command
{
    NSString *eventName= [command.arguments objectAtIndex:0];
    if ([command.arguments count] > 2) {
      NSDictionary *properties = [command.arguments objectAtIndex:1];
      [Appsee addEvent:eventName withProperties:properties];
    }else{
      [Appsee addEvent:eventName];
    }
}

- (void)setUserID:(CDVInvokedUrlCommand *)command
{
    NSString *userID= [command.arguments objectAtIndex:0];

    [Appsee setUserID:userID];
}

- (void)setLocation:(CDVInvokedUrlCommand *)command
{
    double lat = [[command.arguments objectAtIndex:0]doubleValue];
    double lon = [[command.arguments objectAtIndex:1]doubleValue];
    float  hor = [[command.arguments objectAtIndex:2]floatValue];
    float  ver = [[command.arguments objectAtIndex:3]floatValue];

    [Appsee setLocation:lat longitude:lon horizontalAccuracy:hor verticalAccuracy:ver];
}

- (void)setLocationDescription:(CDVInvokedUrlCommand *)command
{
    NSString *description= [command.arguments objectAtIndex:0];

    [Appsee setLocationDescription:description];
}


@end

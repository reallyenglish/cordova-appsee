//
//  CDVAppsee.h
//
//  Copyright (c) 2014 Reallyenglish. All rights reserved.

#import <Cordova/CDV.h>

@interface CDVAppsee: CDVPlugin

- (void)init:(CDVInvokedUrlCommand *)command;
- (void)startScreen:(CDVInvokedUrlCommand *)command;

@end

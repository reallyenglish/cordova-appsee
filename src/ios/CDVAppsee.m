//
//  Appsee.m
//
//  Copyright (c) 2014 Reallyenglish. All rights reserved.
//

#import "CDVAppsee.h"
#import <Appsee/Appsee.h>

@implementation CDVAppsee

- (void)init:(CDVInvokedUrlCommand *)command
{
    NSString *key = [command.arguments objectAtIndex:0];
    
    [Appsee start:key];
}

@end

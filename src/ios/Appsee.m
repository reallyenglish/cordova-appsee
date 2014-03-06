//
//  Appsee.m
//
//  Copyright (c) 2014 Reallyenglish. All rights reserved.
//

#import "Appsee.h"
#import <Appsee/Appsee.h>

@implementation Appsee

- (void)init:(CDVInvokedUrlCommand *)command
{
    NSString *key = [command.arguments objectAtIndex:0];
    
    [Appsee start:key];
}

@end

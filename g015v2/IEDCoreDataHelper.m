//
//  IEDCoreDataHelper.m
//  g015v2
//
//  Created by Donald Chan on 11/03/2014.
//  Copyright (c) 2014 iEndeavour. All rights reserved.
//

#import "IEDCoreDataHelper.h"

@implementation IEDCoreDataHelper

+(NSManagedObjectContext *) managedObjectContext;
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]){
        context = [delegate managedObjectContext];
    }
    
    return context;
}

@end

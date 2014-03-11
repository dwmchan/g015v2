//
//  IEDAppDelegate.h
//  g015v2
//
//  Created by Donald Chan on 11/03/2014.
//  Copyright (c) 2014 iEndeavour. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IEDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end

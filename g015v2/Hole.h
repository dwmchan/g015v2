//
//  Hole.h
//  g015v2
//
//  Created by Donald Chan on 11/03/2014.
//  Copyright (c) 2014 iEndeavour. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Hole : NSManagedObject

@property (nonatomic) int16_t holeNumber;
@property (nonatomic) int16_t par;
@property (nonatomic) int16_t numberOfStrokes;

@end

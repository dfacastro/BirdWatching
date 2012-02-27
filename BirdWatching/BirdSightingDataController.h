//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by Diogo Castro on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BirdSighting;

@interface BirdSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

- (unsigned) countofList;
- (BirdSighting *) objectInListAtIndex:(unsigned)theIndex;
- (void) addBirdSightingWithName:(NSString *) inputBirdName location:(NSString *) inputLocation;


@end

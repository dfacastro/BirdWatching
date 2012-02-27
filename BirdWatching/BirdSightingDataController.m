//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by Diogo Castro on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdSighting.h"

@interface BirdSightingDataController ()

- (void) initializeDefaultDataList;

@end


@implementation BirdSightingDataController

@synthesize masterBirdSightingList = _masterBirdSightingList;

- (void) initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterBirdSightingList = sightingList;
    
    [self addBirdSightingWithName:@"Pidgeon" location:@"Everywhere"];
}

- (void) setMasterBirdSightingList:(NSMutableArray *)newList {
    if(_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}

- (id) init {
    
    if(self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
    
}

- (unsigned) countofList {
    return [self.masterBirdSightingList count];
}

- (BirdSighting *)objectInListAtIndex:(unsigned int)theIndex {
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}

- (void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation {
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    sighting = [[BirdSighting alloc] initWithName:inputBirdName location:inputLocation date:today];
    [self.masterBirdSightingList addObject:sighting];
}






@end

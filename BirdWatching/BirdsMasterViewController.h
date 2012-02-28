//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Diogo Castro on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController* dataController;

@end

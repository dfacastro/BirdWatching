//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by Diogo Castro on 2/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdsDetailViewController.h"
#import "BirdSighting.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

/*
@synthesize detailItem = _detailItem;
@synthesize detailDescriptionLabel = _detailDescriptionLabel;
*/

@synthesize sighting = _sighting, birdNameLabel = _birdNameLabel, locationLabel = _locationLabel, dateLabel = _dateLabel;

#pragma mark - Managing the detail item

/*- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}*/

- (void) setSighting:(BirdSighting *)newSighting {
    if(_sighting != newSighting) {
        _sighting = newSighting;
        
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    /*
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
    */
    
    BirdSighting *theSighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if(theSighting) {
        
        self.birdNameLabel.text = theSighting.name;
        self.locationLabel.text = theSighting.location;
        self.dateLabel.text = [formatter stringFromDate:(NSDate*) theSighting.date];
        
        
    }
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    self.sighting = nil;
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    //self.detailDescriptionLabel = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

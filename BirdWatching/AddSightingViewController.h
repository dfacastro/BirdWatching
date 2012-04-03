//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by Diogo Castro on 03/04/12.
//  Copyright (c) 2012 FEUP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end

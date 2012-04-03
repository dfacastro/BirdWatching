//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by Diogo Castro on 03/04/12.
//  Copyright (c) 2012 FEUP. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddSightingViewControllerDelegate;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;


@end



@protocol AddSightingViewControllerDelegate <NSObject>

- (void) addSightingViewControllerDidCancel:(AddSightingViewController*) controller;
- (void) addSightingViewControllerDidFinish:(AddSightingViewController*) controller name:(NSString *)name location:(NSString*)location;

@end
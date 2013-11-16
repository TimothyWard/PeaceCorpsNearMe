//
//  ProfileViewController.m
//  MapSearch
//
//  Created by Timothy Ward on 11/16/13.
//
//

#import "ProfileViewController.h"

@implementation ProfileViewController

- (IBAction)FirstName:(id)sender {
}
- (IBAction)LastName:(id)sender {
}
- (IBAction)PCPhoneNum:(id)sender {
}
- (IBAction)AccessCode:(id)sender {
}
- (IBAction)BuddyID:(id)sender {
}
- (IBAction)PeaceCorpsID:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)MedicineType:(id)sender {
}
- (IBAction)Time:(id)sender {
}
- (IBAction)Submit:(id)sender {
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onKeyboardShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onKeyboardHide:) name:UIKeyboardDidHideNotification object:nil];
    self.BackgroundView.contentSize = CGSizeMake(self.BackgroundView.frame.size.width, self.BackgroundView.frame.size.height);
    
}

-(void)onKeyboardShow:(NSNotification *)notification
{
    NSLog(@"OnKeyboardDidShow");
    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-216);
    [self.view setNeedsDisplay];
    [self.BackgroundView setNeedsDisplay];
}

-(void)onKeyboardHide:(NSNotification *)notification
{
    NSLog(@"OnKeyboardDidHide");
    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height+216);
    [self.view setNeedsDisplay];
    [self.BackgroundView setNeedsDisplay];
}

@end

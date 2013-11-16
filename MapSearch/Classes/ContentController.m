//
//  ContentController.m
//  MapSearch
//
//  Created by Timothy Ward on 11/16/13.
//
//

#import "ContentController.h"

@implementation ContentController
- (IBAction)Title:(id)sender {
}
- (IBAction)Date:(id)sender {
}
- (IBAction)StartTime:(id)sender {
}
- (IBAction)EndTime:(id)sender {
}
- (IBAction)Location:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)PrivatePublic:(id)sender {
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

//
//  ProfileViewController.h
//  MapSearch
//
//  Created by Timothy Ward on 11/16/13.
//
//

#import <Foundation/Foundation.h>

@interface ProfileViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIScrollView *BackgroundView;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic)          NSArray *dayArray;

@end

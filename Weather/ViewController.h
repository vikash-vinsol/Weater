//
//  ViewController.h
//  Weather
//
//  Created by Vikash Soni on 26/09/13.
//  Copyright (c) 2013 Vikash Soni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSDictionary *weather;
    NSDictionary *details;
    int cod;
}
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *tempLabel;
@property (strong, nonatomic) IBOutlet UILabel *PresLabel;
@property (strong, nonatomic) IBOutlet UILabel *humidityLabel;
@property (strong, nonatomic) IBOutlet UILabel *maxTlabel;
@property (strong, nonatomic) IBOutlet UILabel *minTlabel;

- (IBAction)pressMe:(id)sender;
@end

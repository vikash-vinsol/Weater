//
//  ViewController.m
//  Weather
//
//  Created by Vikash Soni on 26/09/13.
//  Copyright (c) 2013 Vikash Soni. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize textField,tempLabel,maxTlabel,minTlabel,PresLabel,humidityLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressMe:(id)sender
{
    NSString *finalURL = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@",textField.text];
    NSData *jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:finalURL]];
    [self performSelectorOnMainThread:@selector(fetchedData:) withObject:jsonData waitUntilDone:YES];
    
    tempLabel.text     = [NSString stringWithFormat:@"%@",[weather objectForKey:@"temp"]];
    maxTlabel.text     = [NSString stringWithFormat:@"%@",[weather objectForKey:@"temp_max"]];
    minTlabel.text     = [NSString stringWithFormat:@"%@",[weather objectForKey:@"temp_min"]];
    humidityLabel.text = [NSString stringWithFormat:@"%@",[weather objectForKey:@"humidity"]];
    PresLabel.text     = [NSString stringWithFormat:@"%@",[weather objectForKey:@"pressure"]];
    [textField resignFirstResponder];

}

- (void)fetchedData:(NSData *)responseData
{
    NSError *error;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    weather = [json objectForKey:@"main"];
    NSLog(@"%@",[[json objectForKey:@"main"]objectForKey:@"temp"]);
}

@end

//
//  SNMViewController.m
//  snailmail
//
//  Created by ahisbroo on 2/4/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import "SNMViewController.h"
#import "SNMAddressViewController.h"

@interface SNMViewController ()

@end

@implementation SNMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)updateMessage {
    self.message.messageText = self.messageTextView.text;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"segue1"]) {
        [self updateMessage];
        SNMAddressViewController *addressView = (SNMAddressViewController*)[segue destinationViewController];
        addressView.message = self.message;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

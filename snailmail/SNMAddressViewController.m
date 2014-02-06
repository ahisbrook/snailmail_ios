//
//  SNMAddressViewController.m
//  snailmail
//
//  Created by ahisbroo on 2/4/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import "SNMAddressViewController.h"

@interface SNMAddressViewController ()

@end

@implementation SNMAddressViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)updateMessage {
    self.message.targetAddress = self.targetAddressView.text;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

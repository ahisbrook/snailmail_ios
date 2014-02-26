//
//  SNMAddressViewController.m
//  snailmail
//
//  Created by ahisbroo on 2/4/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import "SNMAddressViewController.h"
#import "ADROVMapper.h"

@interface SNMAddressViewController ()
@property ADROVMapper *mapper;
@end

@implementation SNMAddressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapper = [ADROVMapper mapperWithView:self object:self.message];
    [self.mapper updateView];
}

- (void)updateMessage {
    [self.mapper updateObject];
    //self.message.targetAddress = self.targetAddress.text;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  SNMViewController.m
//  snailmail
//
//  Created by ahisbroo on 2/4/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import "SNMMessageViewController.h"
#import "SNMAddressViewController.h"
#import "ADROVMapper.h"

@interface SNMMessageViewController ()
@property (strong, nonatomic) ADROVMapper *mapper;
@end

@implementation SNMMessageViewController

- (void)viewWillAppear:(BOOL)animated {
    if (!self.message) {
        self.message = [SNMMessage new];
        self.message.messageText = @"Example text";
        self.message.targetAddress = @"me@example.com";
    }
    self.mapper = [ADROVMapper mapperWithView:self object:self.message];
    [self.mapper updateView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)updateMessage {
    [self.mapper updateObject];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"segue1"]) {
        [self updateMessage];
        SNMMessageViewController *reviewView = (SNMMessageViewController*)[segue destinationViewController];
        reviewView.message = self.message;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

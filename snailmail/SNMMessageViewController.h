//
//  SNMViewController.h
//  snailmail
//
//  Created by ahisbroo on 2/4/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SNMMessage.h"

@interface SNMMessageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *messageText;
@property (weak, nonatomic) IBOutlet UITextField *targetAddress;
@property (strong, nonatomic) SNMMessage *message;

@end

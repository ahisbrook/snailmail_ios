//
//  SNMViewController.h
//  snailmail
//
//  Created by ahisbroo on 2/4/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SNMMessage.h"

@interface SNMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;
@property (strong, nonatomic) SNMMessage *message;

@end

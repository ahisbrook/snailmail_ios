//
//  SNMMessage.h
//  snailmail
//
//  Created by ahisbroo on 2/6/14.
//  Copyright (c) 2014 ahisbroo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNMMessage : NSObject

@property (strong, nonatomic) NSString *messageText;
@property (strong, nonatomic) NSString *targetAddress;

@end

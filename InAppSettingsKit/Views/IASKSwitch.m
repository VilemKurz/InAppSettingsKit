//
//  IASKSwitch.m
//  http://www.inappsettingskit.com
//
//  Copyright (c) 2009:
//  Luc Vandal, Edovia Inc., http://www.edovia.com
//  Ortwin Gentz, FutureTap GmbH, http://www.futuretap.com
//  All rights reserved.
// 
//  It is appreciated but not required that you give credit to Luc Vandal and Ortwin Gentz, 
//  as the original authors of this code. You can give credit in a blog post, a tweet or on 
//  a info page of your app. Also, the original authors appreciate letting them know if you use this code.
//
//  This code is licensed under the BSD license that is available at: http://www.opensource.org/licenses/bsd-license.php
//

#import "IASKSwitch.h"


@implementation IASKSwitch

@synthesize key=_key;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithOrigin:frame.origin
                 backgroundImage:[UIImage imageNamed:@"switchBg"]
                     buttonImage:[UIImage imageNamed:@"switchButton"]
                     borderImage:[UIImage imageNamed:@"switchBorder"]];
    
    if (self) {
        
        UILabel *leftView = [[UILabel alloc] initWithFrame:CGRectZero];
        leftView.text = NSLocalizedString(@"ON", @"on switch text");
        leftView.textAlignment = UITextAlignmentLeft;
        [self setupSwitchLabel:leftView];
        self.leftView = leftView;
        [leftView release];
        
        self.leftViewInsets = UIEdgeInsetsMake(3, 12, 0, 0);
        
        UILabel *rightView = [[UILabel alloc] initWithFrame:CGRectZero];
        rightView.text = NSLocalizedString(@"OFF", @"off switch text");
        rightView.textAlignment = UITextAlignmentRight;
        [self setupSwitchLabel:rightView];
        self.rightView = rightView;
        [rightView release];
        
        self.rightViewInsets = UIEdgeInsetsMake(3, 0, 0, 12);
    }
    
    return self;
}

- (void)setupSwitchLabel:(UILabel *)label {
    
    //label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:16];
    label.textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.75];
    label.shadowColor = [[UIColor blackColor] colorWithAlphaComponent:0.25];
    label.shadowOffset = CGSizeMake(0, -1);
}

- (void)dealloc {
    [_key release], _key = nil;
	
    [super dealloc];
}

@end

//
//  ViewController.m
//  Example
//
//  Created by IgorBizi@mail.ru on 12/16/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "ViewController.h"
#import "BIZActivityButton.h"


@interface ViewController ()
@end


@implementation ViewController


- (IBAction)buttonAction:(BIZActivityButton *)sender
{
    sender.activityView.color = [UIColor redColor];
    sender.showActivity = !sender.showActivity;
}


@end

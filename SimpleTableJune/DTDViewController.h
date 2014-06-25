//
//  DTDViewController.h
//  SimpleTableJune
//
//  Created by Tom Edgar on 6/25/14.
//  Copyright (c) 2014 Tom Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DTDViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray *dwarves;

@end

//
//  DTDViewController.m
//  SimpleTableJune
//
//  Created by Tom Edgar on 6/25/14.
//  Copyright (c) 2014 Tom Edgar. All rights reserved.
//

#import "DTDViewController.h"

@interface DTDViewController ()

@end

@implementation DTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.dwarves = @[@"Sleepy", @"Sneezy",
                     @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin",
                     @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili",
                     @"Oin", @"Gloin", @"Bifur", @"Bofur", @"Bombur"];
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableCell = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableCell];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:SimpleTableCell];
    }
    
    UIImage *image = [UIImage imageNamed:@"star"];
    cell.imageView.image = image;
    
    UIImage *imageHighlight = [UIImage imageNamed:@"starHigh"];
    cell.imageView.highlightedImage = imageHighlight;
    
    
    cell.textLabel.text = self.dwarves[indexPath.row];
    //NSLog(@"Called");
    return cell;
}

@end




















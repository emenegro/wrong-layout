//
//  ViewController.m
//  WrongLayout
//
//  Created by Mario Negro on 03/09/13.
//  Copyright (c) 2013 Mario Negro. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController ()

@property (nonatomic, readwrite, weak) IBOutlet UITableView *table;

@end

@implementation ViewController

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"MyCell";
    MyCell *cell = (MyCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
	
	if (cell == nil) {
        
        cell = (MyCell *)[[MyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    NSInteger row = [indexPath row];
    [[cell dayLabel] setText:[NSString stringWithFormat:@"%i", row]];
    [[cell descriptionLabel] setText:[NSString stringWithFormat:@"Description %i", row]];
    [[cell monthLabel] setText:@"MAY"];
    [[cell conceptLabel] setText:[NSString stringWithFormat:@"Concept %i", row]];
    [[cell amountLabel] setText:[NSString stringWithFormat:@"1000,%i €", row]];
    
    return cell;
}

@end

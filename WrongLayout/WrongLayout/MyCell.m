//
//  MyCell.m
//  WrongLayout
//
//  Created by Mario Negro on 03/09/13.
//  Copyright (c) 2013 Mario Negro. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

@synthesize dayLabel = dayLabel_;
@synthesize monthLabel = monthLabel_;
@synthesize descriptionLabel = descriptionLabel_;
@synthesize conceptLabel = conceptLabel_;
@synthesize amountLabel = amountLabel_;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIView *contentView = [self contentView];
        
        [contentView setBackgroundColor:[UIColor clearColor]];
        
        dayLabel_ = [[UILabel alloc] initWithFrame:CGRectZero];
        [dayLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [contentView addSubview:dayLabel_];
        
        monthLabel_ = [[UILabel alloc] initWithFrame:CGRectZero];
        [monthLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [monthLabel_ setFont:[UIFont boldSystemFontOfSize:13.0f]];
        [contentView addSubview:monthLabel_];
        
        descriptionLabel_ = [[UILabel alloc] initWithFrame:CGRectZero];
        [descriptionLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [descriptionLabel_ setFont:[UIFont systemFontOfSize:20.0f]];
        [contentView addSubview:descriptionLabel_];
        
        conceptLabel_ = [[UILabel alloc] initWithFrame:CGRectZero];
        [conceptLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [conceptLabel_ setLineBreakMode:NSLineBreakByTruncatingTail];
        [conceptLabel_ setFont:[UIFont systemFontOfSize:12.0f]];
        [contentView addSubview:conceptLabel_];
        
        amountLabel_ = [[UILabel alloc] initWithFrame:CGRectZero];
        [amountLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [contentView addSubview:amountLabel_];
        
        // Constraints
        
        NSDictionary *views = NSDictionaryOfVariableBindings(contentView, dayLabel_, monthLabel_, descriptionLabel_, conceptLabel_, amountLabel_);
        NSDictionary *metrics = @{ @"bigMargin" : @12 };
        
        [descriptionLabel_ setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
        [conceptLabel_ setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
                
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-bigMargin-[dayLabel_][monthLabel_]"
                                                                            options:NSLayoutFormatAlignAllLeading
                                                                            metrics:metrics
                                                                              views:views]];
        
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-bigMargin-[descriptionLabel_][conceptLabel_]"
                                                                            options:NSLayoutFormatAlignAllLeading
                                                                            metrics:metrics
                                                                              views:views]];
        
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-bigMargin-[dayLabel_]-bigMargin-[descriptionLabel_]-(>=bigMargin)-[amountLabel_]-bigMargin-|"
                                                                            options:NSLayoutFormatAlignAllBaseline
                                                                            metrics:metrics
                                                                              views:views]];
        
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-bigMargin-[monthLabel_]-bigMargin-[conceptLabel_]-bigMargin-|"
                                                                            options:NSLayoutFormatAlignAllBaseline
                                                                            metrics:metrics
                                                                              views:views]];
    }
    
    return self;
}

@end

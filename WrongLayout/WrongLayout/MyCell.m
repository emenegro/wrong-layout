//
//  MyCell.m
//  WrongLayout
//
//  Created by Mario Negro on 03/09/13.
//  Copyright (c) 2013 Mario Negro. All rights reserved.
//

#import "MyCell.h"
#import "MyLabel.h"

@interface MyCell()

@property (nonatomic, readwrite, strong) MyLabel *dayLabel;
@property (nonatomic, readwrite, strong) MyLabel *monthLabel;
@property (nonatomic, readwrite, strong) MyLabel *descriptionLabel;
@property (nonatomic, readwrite, strong) MyLabel *conceptLabel;
@property (nonatomic, readwrite, strong) MyLabel *amountLabel;

@end

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
        
        dayLabel_ = [[MyLabel alloc] initWithFrame:CGRectZero];
        [dayLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [dayLabel_ setFont:[UIFont systemFontOfSize:12.0f]];
        [dayLabel_ setBackgroundColor:[UIColor greenColor]];
        [contentView addSubview:dayLabel_];
        
        monthLabel_ = [[MyLabel alloc] initWithFrame:CGRectZero];
        [monthLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [monthLabel_ setFont:[UIFont boldSystemFontOfSize:13.0f]];
        [monthLabel_ setBackgroundColor:[UIColor greenColor]];
        [contentView addSubview:monthLabel_];
        
        descriptionLabel_ = [[MyLabel alloc] initWithFrame:CGRectZero];
        [descriptionLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [descriptionLabel_ setFont:[UIFont systemFontOfSize:20.0f]];
        [descriptionLabel_ setBackgroundColor:[UIColor greenColor]];
        [contentView addSubview:descriptionLabel_];
        
        conceptLabel_ = [[MyLabel alloc] initWithFrame:CGRectZero];
        [conceptLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [conceptLabel_ setLineBreakMode:NSLineBreakByTruncatingTail];
        [conceptLabel_ setFont:[UIFont systemFontOfSize:12.0f]];
        [conceptLabel_ setBackgroundColor:[UIColor greenColor]];
        [contentView addSubview:conceptLabel_];
        
        amountLabel_ = [[MyLabel alloc] initWithFrame:CGRectZero];
        [amountLabel_ setTranslatesAutoresizingMaskIntoConstraints:NO];
        [amountLabel_ setBackgroundColor:[UIColor greenColor]];
        [contentView addSubview:amountLabel_];
        
        // Constraints
        
        NSDictionary *views = NSDictionaryOfVariableBindings(contentView, dayLabel_, monthLabel_, descriptionLabel_, conceptLabel_, amountLabel_);
        NSDictionary *metrics = @{ @"bigMargin" : @12, @"smallMargin" : @6 };
        
        [descriptionLabel_ setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
        [conceptLabel_ setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
                
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-bigMargin@150-[dayLabel_]"
                                                                            options:0
                                                                            metrics:metrics
                                                                              views:views]];
        
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[monthLabel_]-smallMargin@150-|"
                                                                            options:0
                                                                            metrics:metrics
                                                                              views:views]];
        
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-bigMargin@150-[descriptionLabel_]"
                                                                            options:0
                                                                            metrics:metrics
                                                                              views:views]];
        
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[conceptLabel_]-smallMargin@150-|"
                                                                            options:0
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

- (void)displayDay:(NSString *)day
             month:(NSString *)month
       description:(NSString *)description
           concept:(NSString *)concept
            amount:(NSString *)amount {
    
    [dayLabel_ setText:day];
    [dayLabel_ sizeToFit];
    
    [monthLabel_ setText:month];
    [monthLabel_ sizeToFit];
    
    [descriptionLabel_ setText:description];
    [descriptionLabel_ sizeToFit];
    
    [conceptLabel_ setText:concept];
    [conceptLabel_ sizeToFit];
    
    [amountLabel_ setText:amount];
    [amountLabel_ sizeToFit];
}

@end

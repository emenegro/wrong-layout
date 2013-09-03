//
//  MyCell.h
//  WrongLayout
//
//  Created by Mario Negro on 03/09/13.
//  Copyright (c) 2013 Mario Negro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyCell : UITableViewCell

@property (nonatomic, readwrite, strong) UILabel *dayLabel;
@property (nonatomic, readwrite, strong) UILabel *monthLabel;
@property (nonatomic, readwrite, strong) UILabel *descriptionLabel;
@property (nonatomic, readwrite, strong) UILabel *conceptLabel;
@property (nonatomic, readwrite, strong) UILabel *amountLabel;

@end

//
//  MyCell.h
//  WrongLayout
//
//  Created by Mario Negro on 03/09/13.
//  Copyright (c) 2013 Mario Negro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyCell : UITableViewCell

- (void)displayDay:(NSString *)day
             month:(NSString *)month
       description:(NSString *)description
           concept:(NSString *)concept
            amount:(NSString *)amount;

@end

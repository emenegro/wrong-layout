//
//  MyLabel.m
//  WrongLayout
//
//  Created by Mario Negro on 04/09/13.
//  Copyright (c) 2013 Mario Negro. All rights reserved.
//

#import "MyLabel.h"

@interface MyLabel()

@property (nonatomic, readwrite, strong) UIView *baselineView;

@end

@implementation MyLabel

- (UIView *)viewForBaselineLayout {
    
    if (!self.baselineView) {
        
        self.baselineView = [[UIView alloc] initWithFrame:CGRectZero];
        self.baselineView.backgroundColor = [UIColor redColor];
        self.baselineView.alpha = 0.3f;
        [self addSubview:self.baselineView];
    }
    
    float viewHeight = self.bounds.size.height;
    float spaceAboveText = (viewHeight - self.font.lineHeight) / 2;
    float baselineViewHeight = spaceAboveText + self.font.ascender + 1;
    
    int integerBaseline = (int)(baselineViewHeight + 0.5f);
    
    self.baselineView.frame = CGRectMake(0, 0, self.bounds.size.width, (float)integerBaseline);
    
    return self.baselineView;
}

@end

//
//  CalculatorView.m
//  LLDBDemo
//
//  Created by 贺文杰 on 2019/10/27.
//  Copyright © 2019 贺文杰. All rights reserved.
//

#import "CalculatorView.h"

@interface CalculatorView ()

@property(nonatomic,copy)NSString *sumValueStr;
@property(nonatomic,copy)NSArray *ary;

@end

@implementation CalculatorView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _sumValueStr = @"30";
        _ary = @[@"ceshi", @"suiji", @"book", @"look"];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

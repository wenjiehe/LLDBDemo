//
//  ViewController.m
//  LLDBDemo
//
//  Created by 贺文杰 on 2019/10/27.
//  Copyright © 2019 贺文杰. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorView.h"

@interface ViewController ()

@property(nonatomic,strong)CalculatorView *cView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.cView];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"我可以了");
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark -- Tap
- (void)tapView
{
    NSArray *ary = @[@"look", @"book", @"test", @"bank", @"like"];
    for (NSString *str in ary) {
        NSLog(@"str = %@", str);
    }
}

- (CalculatorView *)cView
{
    if (!_cView) {
        _cView = [[CalculatorView alloc] initWithFrame:CGRectMake(30, 100, 150, 150)];
        _cView.backgroundColor = [UIColor cyanColor];
        _cView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
        [tap addTarget:self action:@selector(tapView)];
        [_cView addGestureRecognizer:tap];
    }
    return _cView;
}


@end

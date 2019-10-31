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
@property (strong, nonatomic) IBOutlet UIButton *leftButton;
@property (strong, nonatomic) IBOutlet UIButton *rightButton;
@property(nonatomic,copy)NSString *changeValueStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.cView];
    self.changeValueStr = @"like";
    
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

#pragma mark -- Action
- (IBAction)clickRightButton:(UIButton *)sender {
    NSLog(@"%s", __FUNCTION__);
}

- (IBAction)clickLeftButton:(UIButton *)sender {
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark -- Tap
- (void)tapView
{
    NSArray *ary = @[@"look", @"book", @"test", @"bank", @"like"];
    for (NSString *str in ary) {
        self.changeValueStr = str;
        NSLog(@"stttt = %@", self.changeValueStr);
    }
    NSString *crashStr = ary[4];
    if ([crashStr isEqualToString:@"like"]) {
        NSLog(@"like");
    }else{
        NSLog(@"bank");
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

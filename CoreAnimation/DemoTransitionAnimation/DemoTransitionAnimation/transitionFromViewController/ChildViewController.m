//
//  ChildViewController.m
//  DemoTransitionAnimation
//
//  Created by lijian on 2019/8/14.
//  Copyright © 2019 lijian. All rights reserved.
//

#import "ChildViewController.h"

@interface ChildViewController ()

@property(nonatomic, strong) UILabel *textLabel;

@end

@implementation ChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    self.textLabel = [[UILabel alloc] init];
    self.textLabel.text = self.text ?: @"Child";
    self.textLabel.textColor = [UIColor whiteColor];
    self.textLabel.font = [UIFont systemFontOfSize:26];
    [self.view addSubview:self.textLabel];
    [self.textLabel sizeToFit];
    self.textLabel.center = self.view.center;
}

- (void)setText:(NSString *)text {
    self.textLabel.text = text ?: @"Child";
    [self.textLabel sizeToFit];
    self.textLabel.center = self.view.center;
}

@end

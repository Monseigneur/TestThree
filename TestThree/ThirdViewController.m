//
//  ThirdViewController.m
//  TestThree
//
//  Created by Milan Justel on 4/4/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "SecondViewController.h"
#import "TestThreeViewController.h"
#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([[segue identifier] isEqualToString:@"3to1"]) {
    TestThreeViewController* firstCont = [segue destinationViewController];
    [[firstCont view] setBackgroundColor:[UIColor grayColor]];
    firstCont.FirstLabel.text = @"Came from third";
  } else if ([[segue identifier] isEqualToString:@"3to2"]) {
    SecondViewController* secondCont = [segue destinationViewController];
    [[secondCont view] setBackgroundColor:[UIColor orangeColor]];
    secondCont.SecondLabel.text = @"Came from third";
  }
}

@end

//
//  TestThreeViewController.m
//  TestThree
//
//  Created by Milan Justel on 4/4/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "SecondViewController.h"
#import "TestThreeViewController.h"
#import "ThirdViewController.h"

@interface TestThreeViewController ()

@end

@implementation TestThreeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([[segue identifier] isEqualToString:@"1to2"]) {
    SecondViewController* secondCont = [segue destinationViewController];
    [[secondCont view] setBackgroundColor:[UIColor redColor]];
    secondCont.SecondLabel.text = @"Came from first";
  } else if ([[segue identifier] isEqualToString:@"1to3"]) {
    ThirdViewController* thirdCont = [segue destinationViewController];
    [[thirdCont view] setBackgroundColor:[UIColor blueColor]];
    thirdCont.ThirdLabel.text = @"Came from first";
  }
}

@end

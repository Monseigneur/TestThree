//
//  SecondViewController.m
//  TestThree
//
//  Created by Milan Justel on 4/4/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "SecondViewController.h"
#import "TestThreeViewController.h"
#import "ThirdViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

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
  if ([[segue identifier] isEqualToString:@"2to1"]) {
    TestThreeViewController* firstCont = [segue destinationViewController];
    [[firstCont view] setBackgroundColor:[UIColor yellowColor]];
    firstCont.FirstLabel.text = @"Came from second";
  } else if ([[segue identifier] isEqualToString:@"2to3"]) {
    ThirdViewController* thirdCont = [segue destinationViewController];
    [[thirdCont view] setBackgroundColor:[UIColor greenColor]];
    thirdCont.ThirdLabel.text = @"Came from second";
  }
}


@end

//
//  ViewController.m
//  TicTacToe
//
//  Created by Wade Sellers on 10/2/14.
//  Copyright (c) 2014 Wade Sellers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (void) findLabelUsingPoint:(CGPoint)tappedPoint {
    if (CGRectContainsPoint(self.labelOne.frame, tappedPoint)) {
        self.labelOne.text = @"X";
    }
}


- (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGesture {
    CGPoint tappedPoint = [tapGesture locationInView:self.view];
    [self findLabelUsingPoint:tappedPoint];
    //NSLog(@"The point I tapped = %@", [NSValue valueWithCGPoint:tappedPoint]);
}


@end

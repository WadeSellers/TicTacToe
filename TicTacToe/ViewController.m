//
//  ViewController.m
//  TicTacToe
//
//  Created by Wade Sellers on 10/2/14.
//  Copyright (c) 2014 Wade Sellers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *LabelOne;
@property (strong, nonatomic) IBOutlet UIView *LabelTwo;
@property (strong, nonatomic) IBOutlet UIView *LabelThree;
@property (strong, nonatomic) IBOutlet UIView *LabelFour;
@property (strong, nonatomic) IBOutlet UIView *LabelFive;
@property (strong, nonatomic) IBOutlet UIView *LabelSix;
@property (strong, nonatomic) IBOutlet UIView *LabelSeven;
@property (strong, nonatomic) IBOutlet UIView *LabelEight;
@property (strong, nonatomic) IBOutlet UIView *LabelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

//- (void) findLabelUsingPoint: (CGPoint)point {
//    //CGPoint tapPoint
//}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGesture {
    CGPoint point = [tapGesture locationInView:self.view];
//    [self findLabelUsingPoint:myPoint];
    NSLog(@"The point I tapped = %@", [NSValue valueWithCGPoint:point]);
}


@end

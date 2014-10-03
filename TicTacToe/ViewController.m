//
//  ViewController.m
//  TicTacToe
//
//  Created by Wade Sellers on 10/2/14.
//  Copyright (c) 2014 Wade Sellers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *theCurrentPlayer;
@property NSArray *labels;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.theCurrentPlayer.text = @"X";
    [self.theCurrentPlayer setTextColor:[UIColor blueColor]];

    self.labels = [NSArray arrayWithObjects:
                        self.labelOne,
                        self.labelTwo,
                        self.labelThree,
                        self.labelFour,
                        self.labelFive,
                        self.labelSix,
                        self.labelSeven,
                        self.labelEight,
                        self.labelNine, nil];
}

//We are going to use fast enumeration to go through the array of UILabels and check each one to
//see if the tappedPoint falls in the label.frame
//If it does, change the label text to either an X or an O

- (void) findLabelUsingPoint:(CGPoint)tappedPoint
{
    for(UILabel *label in self.labels)
    {
        if (CGRectContainsPoint(label.frame, tappedPoint))
        {
            label.textColor = self.theCurrentPlayer.textColor;
            label.text = self.theCurrentPlayer.text;
            if ([self.theCurrentPlayer.text isEqualToString:@"X"])
            {
                [self.theCurrentPlayer setTextColor:[UIColor redColor]];
                self.theCurrentPlayer.text = @"O";
                [self didYouWin];
            }
            else
            {
                [self.theCurrentPlayer setTextColor:[UIColor blueColor]];
                self.theCurrentPlayer.text = @"X";
                [self didYouWin];
            }
        }
        //[self didYouWin];
    }
}

- (void) didYouWin
{
    if ((self.labelOne.text == self.labelTwo.text) && (self.labelTwo.text == self.labelThree.text))
    {
        [self youWon];
    }
    if ((self.labelFour.text == self.labelFive.text) && (self.labelFive.text == self.labelSix.text))
    {
        [self youWon];
    }
    if ((self.labelSeven.text == self.labelEight.text) && (self.labelEight.text == self.labelNine.text))
    {
        [self youWon];
    }
    if ((self.labelOne.text == self.labelFour.text) && (self.labelFour.text == self.labelSeven.text))
    {
        [self youWon];
    }
    if ((self.labelTwo.text == self.labelFive.text) && (self.labelFive.text == self.labelEight.text))
    {
        [self youWon];
    }
    if ((self.labelThree.text == self.labelSix.text) && (self.labelSix.text == self.labelNine.text))
    {
        [self youWon];
    }
    if ((self.labelOne.text == self.labelFive.text) && (self.labelFive.text == self.labelNine.text))
    {
        [self youWon];
    }
    if ((self.labelThree.text == self.labelFive.text) && (self.labelFive.text == self.labelSeven.text))
    {
        [self youWon];
    }
}

//When I Tap, the point will be saved in tappedPoint
//tappedPoint will then be send to the findLabelUsingPoint method

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGesture {
    CGPoint tappedPoint = [tapGesture locationInView:self.view];
    [self findLabelUsingPoint:tappedPoint];
}

- (void) youWon
{
    UIAlertView *alertView = [[UIAlertView alloc] init];
    alertView.delegate = self;
    if ([self.theCurrentPlayer.text isEqualToString:@"X"]) {
        self.theCurrentPlayer.text = @"O";
    }
    else
    {
        self.theCurrentPlayer.text = @"X";
    }
    alertView.title = [self.theCurrentPlayer.text stringByAppendingString:@"'s WON!"];
    [alertView addButtonWithTitle:@"Play Again!"];
    alertView.tag = 100;
    [alertView show];


}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (alertView.tag == 100) {
        [self resetTheBoard];
    }
}

- (void) resetTheBoard
{
    self.labelOne.text = @"1 ";
    self.labelTwo.text = @"2 ";
    self.labelThree.text = @"3 ";
    self.labelFour.text = @"4 ";
    self.labelFive.text = @"5 ";
    self.labelSix.text = @"6 ";
    self.labelSeven.text = @"7 ";
    self.labelEight.text = @"8 ";
    self.labelNine.text = @"9 ";
    self.theCurrentPlayer.text = @"X";
}









@end

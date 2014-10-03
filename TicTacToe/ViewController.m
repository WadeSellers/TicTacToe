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
@property NSArray *labels;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.whichPlayerLabel.text = @"X";

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

//If the point where you tapped falls within a label, change the label to X or O


}
    //[self updateTicTacToeBoardArray:counter];
    //return tappedLabel;

/*
- (void) findLabelUsingPoint:(CGPoint)tappedPoint {
    if (CGRectContainsPoint(self.labelOne.frame, tappedPoint)) {
        self.labelOne.text = self.whichPlayerLabel.text;
        if ([self.whichPlayerLabel.text containsString:@"X"]) {
            self.whichPlayerLabel.text = @"O";
        }else if ([self.whichPlayerLabel.text containsString:@"O"]) {
            self.whichPlayerLabel.text = @"X";

        }
    }
}

*/

//When I Tap, the point will be saved in tappedPoint
//tappedPoint will then be send to the findLabelUsingPoint method

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGesture {
    CGPoint tappedPoint = [tapGesture locationInView:self.view];
    [self findLabelUsingPoint:tappedPoint];
    //NSLog(@"The point I tapped = %@", [NSValue valueWithCGPoint:tappedPoint]);
}

//I need to change the player after a label is tapped
//tapping a label tells us that the first player's move is done














@end

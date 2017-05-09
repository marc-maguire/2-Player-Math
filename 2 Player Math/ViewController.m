//
//  ViewController.m
//  2 Player Math
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (nonatomic) GameModel *gameModel;
@property (nonatomic) NSInteger playerAnswer;
@property (nonatomic) NSString *playerAnswerString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel = [[GameModel alloc]init];
    self.playerAnswerString = [[NSString alloc]init];
    self.questionLabel.text = self.gameModel.questionToAnswer.question;
    self.player1Score.text = [self.gameModel displayPlayer1Score];
    self.player2Score.text = [self.gameModel displayPlayer2Score];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)keypadTapped:(UIButton *)sender {
    
    switch (sender.tag) {
        case 0:
            [self.playerAnswerString stringByAppendingString:@"0"];
            break;
        case 1:
            [self.playerAnswerString stringByAppendingString:@"1"];
            break;
        case 2:
            [self.playerAnswerString stringByAppendingString:@"2"];
            break;
        case 3:
            [self.playerAnswerString stringByAppendingString:@"3"];
            break;
        case 4:
            [self.playerAnswerString stringByAppendingString:@"4"];
            break;
        case 5:
            [self.playerAnswerString stringByAppendingString:@"5"];
            break;
        case 6:
            [self.playerAnswerString stringByAppendingString:@"6"];
            break;
        case 7:
            [self.playerAnswerString stringByAppendingString:@"7"];
            break;
        case 8:
            [self.playerAnswerString stringByAppendingString:@"8"];
            break;
        case 9:
            [self.playerAnswerString stringByAppendingString:@"9"];
            break;
        case 10:
            //check to see if the answer = the answer and adjust score;
            break;
 
            
        default:
            break;
    }
    
}


-(void)checkAnswer {
    
    if (self.gameModel.answerToQuestion != [self.playerAnswerString integerValue]) {
        [self.gameModel currentActivePlayer].lives -= 1;
        [self updatePlayerScore];
    }
}

-(void)updatePlayerScore {
    
    self.player1Score.text = [self.gameModel displayPlayer1Score];
    self.player2Score.text = [self.gameModel displayPlayer2Score];

}

@end

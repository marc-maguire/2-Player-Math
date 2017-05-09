//
//  GameModel.h
//  2 Player Math
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;
#import "Question.h"

@interface GameModel : NSObject

@property (nonatomic, copy) NSArray <Player *> *players;
@property (nonatomic) NSInteger currentPlayerIndex;
@property (nonatomic) Question *questionToAnswer;
@property (nonatomic) NSInteger answerToQuestion;

-(Player *)currentActivePlayer;
-(NSString *)displayPlayer1Score;
-(NSString *)displayPlayer2Score;


@end

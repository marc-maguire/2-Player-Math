//
//  GameModel.m
//  2 Player Math
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"
#import "QuestionFactory.h"

@implementation GameModel

-(instancetype)init {
    
    if (self = [super init]){
        _players = @[[[Player alloc]init],[[Player alloc]init]];
        _currentPlayerIndex = 0;
    }
    
    
    return self;
}

-(Player *)currentActivePlayer{
    
    return self.players[(self.currentPlayerIndex%[self.players count])];
    
}

-(NSString *)displayScores{
    
    //this method checks the current players index, if true (1) returns player 2, else, player 1
    NSString *string = [NSString stringWithFormat:@"%@: %ld",self.currentPlayerIndex ? @"Player 2" : @"Player 1", (long)self.players[self.currentPlayerIndex].currentScore];
    return string;
}

@end

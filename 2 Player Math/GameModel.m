//
//  GameModel.m
//  2 Player Math
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

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


@end

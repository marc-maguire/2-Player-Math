//
//  GameModel.h
//  2 Player Math
//
//  Created by Marc Maguire on 2017-05-08.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;

@interface GameModel : NSObject

@property (nonatomic, copy) NSArray *players;
@property (nonatomic) NSInteger currentPlayerIndex;

-(Player *)currentActivePlayer;

@end

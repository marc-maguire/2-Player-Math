//
//  AdditionQuestion.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-02.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

//generate a random math question
//also handle answer to question
#import "Question.h"

@implementation Question

-(instancetype)init {
    if (self = [super init]) {
        NSInteger firstRandomNumber = arc4random_uniform(90);
        firstRandomNumber += 10;
        NSInteger secondRandomNumber =arc4random_uniform(90);
        secondRandomNumber += 10;
        
        _leftValue = firstRandomNumber;
        _rightValue = secondRandomNumber;
        
      // _question = [NSString stringWithFormat:@"What is the answer to %li + %li?",firstRandomNumber, secondRandomNumber];
        
       // _answer = firstRandomNumber + secondRandomNumber;
        _startTime = [NSDate date];
        
    
    }
    return self;
}


- (NSInteger)answer {
    
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    
    NSTimeInterval answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    return answerTime;
}
-(void)generateQuestion {
    //must implement in subclasses
}

@end

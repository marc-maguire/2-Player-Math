//
//  QuestionFactory.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (Question *)generateRandomQuestion {
    
    NSArray *questionArray = @[@"AdditionQuestion",@"SubtractionQuestion",@"DivisionQuestion",@"MultiplicationQuestion"];
    NSInteger integer = arc4random_uniform(3);
    NSString *questionString = questionArray[integer];
    
    
    Question *randomQuestion = [[NSClassFromString(questionString) alloc]init];
    
    return randomQuestion;
}

@end

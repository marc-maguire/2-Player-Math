//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(void)generateQuestion {
    
    NSString *multiplicationQuestion = [NSString stringWithFormat:@"%ld / %ld = ?",(long)self.leftValue,(long)self.rightValue];
    NSInteger multiplicationAnswer = self.leftValue / self.rightValue;
    [super setQuestion:multiplicationQuestion];
    [super setAnswer:multiplicationAnswer];

}

-(instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

@end

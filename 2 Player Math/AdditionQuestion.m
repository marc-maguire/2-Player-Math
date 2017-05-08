//
//  AdditionQuestion.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(void)generateQuestion {
    
    NSString *additionQuestion = [NSString stringWithFormat:@"%ld + %ld = ?",(long)self.leftValue,(long)self.rightValue];
    NSInteger additionAnswer = self.leftValue + self.rightValue;
    [super setQuestion:additionQuestion];
    [super setAnswer:additionAnswer];
    
}

-(instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

@end

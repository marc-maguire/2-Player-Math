//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(void)generateQuestion {
    
    NSString *subtractionQuestion = [NSString stringWithFormat:@"%ld - %ld = ?",(long)self.leftValue,(long)self.rightValue];
    NSInteger subtractionAnswer = self.leftValue - self.rightValue;
    [super setQuestion:subtractionQuestion];
    [super setAnswer:subtractionAnswer];
    
}

-(instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

@end

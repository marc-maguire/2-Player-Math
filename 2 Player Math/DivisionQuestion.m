//
//  DivisionQuestion.m
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

-(void)generateQuestion {
    
    NSString *divisionQuestion = [NSString stringWithFormat:@"%ld / %ld = ?",(long)self.leftValue,(long)self.rightValue];
    NSInteger divisionAnswer = self.leftValue / self.rightValue;
    [super setQuestion:divisionQuestion];
    [super setAnswer:divisionAnswer];

    
}
-(instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

@end

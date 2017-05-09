//
//  QuestionFactory.h
//  Maths
//
//  Created by Marc Maguire on 2017-05-03.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;


@interface QuestionFactory : NSObject

-(Question *)generateRandomQuestion;

@end

//
//  QuizViewController.h
//  Quiz
//
//  Created by Natty Rittammanart on 6/24/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{
    int currentQuestionIndex;
    
    //The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects 
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

//The view objects
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end

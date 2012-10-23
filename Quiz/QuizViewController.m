//
//  QuizViewController.m
//  Quiz
//
//  Created by Natty Rittammanart on 6/24/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        //create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //Add questions and answers to the arrays
        [questions addObject:@"Who is Cory?"];
        [answers addObject:@"Louis"];
        
        [questions addObject:@"What is the board we have in dancing room?"];
        [answers addObject:@"Visual Kanban Board"];
        
        [questions addObject:@"What is Pronto Marketing?"];
        [answers addObject:@"Internet Presence Management"];
    }
    //Return the address of the new object
    return self;
}

-(IBAction)showQuestion:(id)sender{
    //step to the next question
    currentQuestionIndex++;
    
    //Am I past the last question?
    if(currentQuestionIndex == [questions count]){
        //Go back to the first question
        currentQuestionIndex = 0;
    }
    //Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    //Display the string in the question field
    [questionField setText:question];
    
    //clear the answer field
    [answerField setText:@"???"];
}

-(IBAction)showAnswer:(id)sender{
    //What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field
    [answerField setText:answer];
}
@end

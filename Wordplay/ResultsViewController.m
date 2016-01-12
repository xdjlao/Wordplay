//
//  ResultsViewController.m
//  Wordplay
//
//  Created by Jerry on 1/11/16.
//  Copyright © 2016 Jerry Lao. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *stringArray = @[@"One day, ", self.name, @" was walking into Mobile Makers when he noticed how ", self.adjective, @", ", self.anotherAdjective, @", and ", self.oneMoreAdjective];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] init];
 
    [attributedString beginEditing];
    
    UIFont *textfont = [UIFont boldSystemFontOfSize:15.0];
    
    for(int i=0; i<stringArray.count; i++){
        if(i%2 != 1) {
            NSAttributedString *string = [[NSAttributedString alloc] initWithString:[stringArray objectAtIndex:i]];
            [attributedString appendAttributedString:string];
        } else {
            NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:textfont, NSFontAttributeName, nil];
            NSAttributedString *string = [[NSAttributedString alloc] initWithString:[stringArray objectAtIndex:i] attributes:attributes];
            [attributedString appendAttributedString:string];
        }
    }
    
    [attributedString endEditing];
    
    self.resultsTextView.attributedText = attributedString;
    // Do any additional setup after loading the view
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startOver:(UIButton *)sender {
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

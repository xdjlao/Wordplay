//
//  OneMoreAdjectiveViewController.m
//  Wordplay
//
//  Created by Jerry on 1/11/16.
//  Copyright © 2016 Jerry Lao. All rights reserved.
//

#import "OneMoreAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface OneMoreAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *oneMoreAdjectiveTextField;

@end

@implementation OneMoreAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Set story object's oneMoreAdjective property
    self.story.oneMoreAdjective = self.oneMoreAdjectiveTextField.text;
    
    // Pass story object to destination view controller
    ResultsViewController *destination = segue.destinationViewController;
    destination.story = self.story;
    
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.oneMoreAdjectiveTextField.text isEqualToString:@""]) {
        return NO;
    }
    else
    {
        return YES;
    }
    
}
- (IBAction)onTap:(UITapGestureRecognizer *)sender {
    [self.oneMoreAdjectiveTextField resignFirstResponder];
}


@end

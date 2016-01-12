//
//  EnterAdjectiveViewController.m
//  Wordplay
//
//  Created by Jerry on 1/11/16.
//  Copyright © 2016 Jerry Lao. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterAnotherAdjectiveViewController.h"


@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

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
    
    // Set story object's adjective property
    self.story.adjective = self.adjectiveTextField.text;
    
    // Pass story object to destination view controller
    EnterAnotherAdjectiveViewController *destination = segue.destinationViewController;
    destination.story = self.story;
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
    
}
- (IBAction)onTap:(UITapGestureRecognizer *)sender {
    [self.adjectiveTextField resignFirstResponder];
}



@end

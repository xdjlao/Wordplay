//
//  EnterAnotherAdjectiveViewController.m
//  Wordplay
//
//  Created by Jerry on 1/11/16.
//  Copyright © 2016 Jerry Lao. All rights reserved.
//

#import "EnterAnotherAdjectiveViewController.h"
#import "OneMoreAdjectiveViewController.h"

@interface EnterAnotherAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *anotherAdjectiveTextView;

@end

@implementation EnterAnotherAdjectiveViewController

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
    
    // Set story object's anotherAdjective property
    self.story.anotherAdjective = self.anotherAdjectiveTextView.text;
    
    // Pass story object to destination view controller
    OneMoreAdjectiveViewController *destination = segue.destinationViewController;
    destination.story = self.story;
    
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.anotherAdjectiveTextView.text isEqualToString:@""]) {
        return NO;
    }
    else
    {
        return YES;
    }
    
}
- (IBAction)onTap:(UITapGestureRecognizer *)sender {
    [self.anotherAdjectiveTextView resignFirstResponder];
}


@end

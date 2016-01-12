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
    ResultsViewController *destination = segue.destinationViewController;
    destination.anotherAdjective = self.anotherAdjective;
    destination.name = self.name;
    destination.adjective = self.adjective;
    destination.oneMoreAdjective = self.oneMoreAdjectiveTextField.text;
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
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


@end

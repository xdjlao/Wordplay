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
    EnterAnotherAdjectiveViewController *destination = segue.destinationViewController;
//    destination.adjective = self.adjectiveTextField.text;
//    destination.name = self.name;
    self.story.adjective = self.adjectiveTextField.text;
    destination.story = self.story;
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    }
    else
    {
        return YES;
    }
    
}



@end

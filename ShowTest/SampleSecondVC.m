//
//  SampleSecondVC.m
//  ShowTest
//
//  Created by mac on 16/12/4.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "SampleSecondVC.h"

@interface SampleSecondVC ()
@property (weak, nonatomic) IBOutlet UIView *view1;

@property (weak, nonatomic) IBOutlet UIView *view2;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topView1Priority;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topButtonPriority;


@end

@implementation SampleSecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ControlBtnAction:(id)sender {
    self.view1.hidden = !self.view1.hidden;
    self.topView1Priority.priority = self.view1.hidden ? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh;
    self.topButtonPriority.priority = self.view1.hidden ? UILayoutPriorityDefaultHigh : UILayoutPriorityDefaultLow;
}
- (IBAction)CancelAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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

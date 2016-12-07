//
//  SampleFirstVC.m
//  ShowTest
//
//  Created by mac on 16/12/4.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "SampleFirstVC.h"

@interface SampleFirstVC ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lable2TopPriority;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lable1TopPriority;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation SampleFirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib
    [self checkPrority];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)CancelAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)label1MoreThanlabel2:(id)sender {
    self.label1.text = @"label1label1label1label1label1label1label1label1label1label1label1label1";
    self.label2.text = @"label2";
    [self checkPrority];
}
- (IBAction)label1lessThanlabel2:(id)sender {
    self.label1.text = @"label1";
    self.label2.text = @"label2label2label2label2label2label2label2label2label2label2label2label2";
    [self checkPrority];
}

- (void)checkPrority
{
    BOOL label1LonerThanLabel2 = self.label1.text.length > self.label2.text.length;
    self.lable1TopPriority.priority = label1LonerThanLabel2 ? UILayoutPriorityDefaultHigh : UILayoutPriorityDefaultLow;
    self.lable2TopPriority.priority = label1LonerThanLabel2 ? UILayoutPriorityDefaultLow : UILayoutPriorityDefaultHigh;
}
- (IBAction)label1equallabel2:(id)sender {
    self.label1.text = @"label1";
    self.label2.text = @"label2";
    [self checkPrority];
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

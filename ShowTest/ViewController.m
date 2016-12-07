//
//  ViewController.m
//  ShowTest
//
//  Created by 慧惠 on 16/12/2.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveCocoa.h"
#import "SampleFirstVC.h"
#import "SampleSecondVC.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *bannerButn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bannerBtnHeightContraints;
@property (assign, nonatomic) NSInteger height;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [RACObserve(self.bannerBtnHeightContraints, constant) subscribeNext:^(id x) {
        if (self.bannerBtnHeightContraints.constant == 0) {
            self.height = 80;
        }else{
            self.height = 0;
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ChangeBannerbuttonImage:(id)sender {
    [self.bannerButn setImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
    self.bannerBtnHeightContraints.constant = self.height;
}
- (IBAction)SampleFirst:(id)sender {
    SampleFirstVC *firstVC = [[SampleFirstVC alloc] init];
    [self presentViewController:firstVC animated:YES completion:nil];
}

- (IBAction)SampleAec:(id)sender {
    SampleSecondVC *firstVC = [[SampleSecondVC alloc] init];
    [self presentViewController:firstVC animated:YES completion:nil];
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

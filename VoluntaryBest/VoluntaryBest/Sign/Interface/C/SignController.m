//
//  SignController.m
//  VoluntaryBest
//
//  Created by 张思扬 on 2023/1/5.
//

#import "SignController.h"
#import "SignView.h"
@interface SignController ()

@end

@implementation SignController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    // Do any additional setup after loading the view.
    SignView* signView = [[SignView alloc] init];
    [signView initView];
    [self.view addSubview:signView];
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

//
//  ViewController.m
//  VoluntaryBest
//
//  Created by 张思扬 on 2023/1/4.
//

#import "ViewController.h"
#import "MainController.h"
#import "AssistanceController.h"
#import "SignController.h"
#import "ForumController.h"
#import "SettingsController.h"
#import "FMDB.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton* buttonStart = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonStart setTitle:@"进入" forState:UIControlStateNormal];
    
    [buttonStart addTarget:self action:@selector(startMainView) forControlEvents:UIControlEventTouchUpInside];
    
    
    buttonStart.frame = CGRectMake(300, 300, 100, 50);
    
    [self.view addSubview:buttonStart];
    
}

- (void) startMainView {
    //在初始的控制器创建五个控制器并组成分栏控制器
    MainController* controllerForMain = [[MainController alloc] init];
    AssistanceController* controllerForAssistance = [[AssistanceController alloc] init];
    SignController* controllerForSign = [[SignController alloc] init];
    ForumController* controllerForForum = [[ForumController alloc] init];
    SettingsController* controllerForSettings = [[SettingsController alloc] init];
    
    controllerForMain.title = @"首页";
    controllerForAssistance.title = @"援助";
    controllerForSign.title = @"签到";
    controllerForForum.title = @"公益圈";
    controllerForSettings.title = @"我的";
    
    UINavigationController* navMain = [[UINavigationController alloc] initWithRootViewController:controllerForMain];
    UINavigationController* navAssistance = [[UINavigationController alloc] initWithRootViewController:controllerForAssistance];
    UINavigationController* navSign = [[UINavigationController alloc] initWithRootViewController:controllerForSign];
    UINavigationController* navForum = [[UINavigationController alloc] initWithRootViewController:controllerForForum];
    UINavigationController* navSettings = [[UINavigationController alloc] initWithRootViewController:controllerForSettings];
    
    
    UINavigationBarAppearance* appear = [[UINavigationBarAppearance alloc] init];
    [appear configureWithOpaqueBackground];
    appear.backgroundColor = [UIColor cyanColor];
    appear.shadowColor = [UIColor clearColor];
    
    navMain.navigationBar.standardAppearance = appear;
    navMain.navigationBar.scrollEdgeAppearance = appear;
    
    navAssistance.navigationBar.standardAppearance = appear;
    navAssistance.navigationBar.scrollEdgeAppearance = appear;
    
    navSign.navigationBar.standardAppearance = appear;
    navSign.navigationBar.scrollEdgeAppearance = appear;
    
    navForum.navigationBar.standardAppearance = appear;
    navForum.navigationBar.scrollEdgeAppearance = appear;
    
    navSettings.navigationBar.standardAppearance = appear;
    navSettings.navigationBar.scrollEdgeAppearance = appear;
    
    
    NSArray* arrayForTabBarController = @[navMain, navAssistance, navSign, navForum, navSettings];
        
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = arrayForTabBarController;
    
    tabBarController.view.backgroundColor = [UIColor whiteColor];
    
    tabBarController.tabBar.translucent = NO;
    
    tabBarController.modalPresentationStyle = UIModalPresentationFullScreen;
    
    tabBarController.selectedIndex = 0;
    
    [self presentViewController:tabBarController animated:NO completion:nil];
}
@end

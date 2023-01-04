//
//  VoluntaryBestUITestsLaunchTests.m
//  VoluntaryBestUITests
//
//  Created by 张思扬 on 2023/1/4.
//

#import <XCTest/XCTest.h>

@interface VoluntaryBestUITestsLaunchTests : XCTestCase

@end

@implementation VoluntaryBestUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end

// Copyright 2015-present 650 Industries. All rights reserved.

#import "ABI34_0_0EXSplashScreen.h"
#import <EXSplashScreen/EXSplashScreenService.h>

@implementation ABI34_0_0EXSplashScreen

ABI34_0_0RCT_EXPORT_MODULE(ExponentSplashScreen);

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

ABI34_0_0RCT_EXPORT_METHOD(hide)
{
  [[EXSplashScreenService sharedInstance] hide:_viewController
                               successCallback:^{}
                               failureCallback:^(NSString * _Nonnull message) {
    // TODO: @bbarthec: some log here please
  }];
}

ABI34_0_0RCT_EXPORT_METHOD(preventAutoHide)
{
  [[EXSplashScreenService sharedInstance] preventAutoHide:_viewController
                                          successCallback:^{}
                                          failureCallback:^(NSString * _Nonnull message) {
    // TODO: @bbarthec: some log here please
  }];
}

@end

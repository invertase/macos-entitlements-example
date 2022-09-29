//
//  AppDelegate.m
//  mac-entitlements
//
//  Created by Russell Wheatley on 29/09/2022.
//

#import "AppDelegate.h"
@import FirebaseCore;
@import FirebaseRemoteConfig;
@import FirebaseInstallations;
@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
  [FIRApp configure];
  
  [
    [FIRInstallations installations] installationIDWithCompletion:^(NSString * _Nullable identifier, NSError * _Nullable error) {
      if(error != nil) {
        NSLog(@"ERROR %@", error);
      } else {
        NSLog(@"SUCCESS %@", identifier);
      }
    }];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
  return YES;
}


@end

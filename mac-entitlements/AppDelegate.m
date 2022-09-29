//
//  AppDelegate.m
//  mac-entitlements
//
//  Created by Russell Wheatley on 29/09/2022.
//

#import "AppDelegate.h"
@import FirebaseCore;
@import FirebaseRemoteConfig;
@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
  [FIRApp configure];
  FIRRemoteConfig* remoteConfig = [FIRRemoteConfig remoteConfig];

  [remoteConfig fetchAndActivateWithCompletionHandler:^(
                    FIRRemoteConfigFetchAndActivateStatus status, NSError *error) {
    if (error != nil) {
      NSLog(@"ERROR RECEIVED %@",error);
    } else {
      if (status == FIRRemoteConfigFetchAndActivateStatusSuccessFetchedFromRemote) {
        NSLog(@"SUCCESSFULLY RECEIVED CONFIG");
      } else {
        NSLog(@"DID NOT SUCCESSFULLY RECEIVE CONFIG");
      }
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

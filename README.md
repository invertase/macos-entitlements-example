# macos-entitlements-example
How to Reproduce Keychain entitlement's exception

1. Clone repository.
2. Run `pod install` from project root.
3. Open project's xcodeworkspace in Xcode.
4. Run application. You should see the keychain exception appear in the console:

```bash
ERROR Error Domain=com.firebase.installations Code=0 "Underlying error: The operation couldn’t be completed. SecItemAdd (-34018)" UserInfo={NSLocalizedFailureReason=Underlying error: The operation couldn’t be completed. SecItemAdd (-34018), NSUnderlyingError=0x600003c0fc30 {Error Domain=com.gul.keychain.ErrorDomain Code=0 "SecItemAdd (-34018)" UserInfo={NSLocalizedFailureReason=SecItemAdd (-34018)}}}
```

5. Clear console logs. Add keychain sharing capability and run the app. The exception disappears and the callback is successful.

// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAdvxBICZeV186pgFYfStFL_Nl2zTk7fLc',
    appId: '1:276688927196:web:45b61a110dea0884b73719',
    messagingSenderId: '276688927196',
    projectId: 'apdale-3ed08',
    authDomain: 'apdale-3ed08.firebaseapp.com',
    storageBucket: 'apdale-3ed08.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhqYiVWF9LwkBOUe_T71kMpiwILUe_a94',
    appId: '1:276688927196:android:ba5c9001bf0345b8b73719',
    messagingSenderId: '276688927196',
    projectId: 'apdale-3ed08',
    storageBucket: 'apdale-3ed08.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8gq-ub1fvv8no4DSlI2p6D3IQlDkv3uI',
    appId: '1:276688927196:ios:933e15787dabe7cfb73719',
    messagingSenderId: '276688927196',
    projectId: 'apdale-3ed08',
    storageBucket: 'apdale-3ed08.appspot.com',
    iosClientId: '276688927196-a7mcodu8nqqupi6g88sls4gv8fqmt9tq.apps.googleusercontent.com',
    iosBundleId: 'com.example.mylogin191',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8gq-ub1fvv8no4DSlI2p6D3IQlDkv3uI',
    appId: '1:276688927196:ios:933e15787dabe7cfb73719',
    messagingSenderId: '276688927196',
    projectId: 'apdale-3ed08',
    storageBucket: 'apdale-3ed08.appspot.com',
    iosClientId: '276688927196-a7mcodu8nqqupi6g88sls4gv8fqmt9tq.apps.googleusercontent.com',
    iosBundleId: 'com.example.mylogin191',
  );
}
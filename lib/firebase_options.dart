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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD5l1iVkutZyGq3ObkGNgebSdbP90kE668',
    appId: '1:760009695639:web:88c31396310419513ae4d2',
    messagingSenderId: '760009695639',
    projectId: 'labassignment-4a9f8',
    authDomain: 'labassignment-4a9f8.firebaseapp.com',
    databaseURL: 'https://labassignment-4a9f8-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'labassignment-4a9f8.appspot.com',
    measurementId: 'G-RRSR0ZWK7M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIggH90AJbLxL14_oRFX_nJWbi6Me6FwU',
    appId: '1:760009695639:android:4d5a6eb6ee5a33f33ae4d2',
    messagingSenderId: '760009695639',
    projectId: 'labassignment-4a9f8',
    databaseURL: 'https://labassignment-4a9f8-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'labassignment-4a9f8.appspot.com',
  );
}

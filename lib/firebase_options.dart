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
    apiKey: 'AIzaSyBbotd05W55OVlrFqiKUxSSCpOojg85cPg',
    appId: '1:382246569977:web:8a93bdb13ec2403a30df28',
    messagingSenderId: '382246569977',
    projectId: 'yt-weekly-100',
    authDomain: 'yt-weekly-100.firebaseapp.com',
    storageBucket: 'yt-weekly-100.appspot.com',
    measurementId: 'G-506E88GB4Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBduiqFe3Om3jLh-vz28i4zOzbh0lGZys',
    appId: '1:382246569977:android:2266e4abd307b5c330df28',
    messagingSenderId: '382246569977',
    projectId: 'yt-weekly-100',
    storageBucket: 'yt-weekly-100.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAj3mCfrQdizKOcd_VD6lOxVm83yrIu0R4',
    appId: '1:382246569977:ios:18def4f78e054b4c30df28',
    messagingSenderId: '382246569977',
    projectId: 'yt-weekly-100',
    storageBucket: 'yt-weekly-100.appspot.com',
    iosBundleId: 'com.example.ytWeekly100',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAj3mCfrQdizKOcd_VD6lOxVm83yrIu0R4',
    appId: '1:382246569977:ios:ab1607f85a72ad4b30df28',
    messagingSenderId: '382246569977',
    projectId: 'yt-weekly-100',
    storageBucket: 'yt-weekly-100.appspot.com',
    iosBundleId: 'com.example.ytWeekly100.RunnerTests',
  );
}

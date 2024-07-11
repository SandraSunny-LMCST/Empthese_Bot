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
    apiKey: 'AIzaSyB_L01bk0Ruu9U_L7A5cXRLvQCFdxrpLA0',
    appId: '1:73939893898:web:b79e7cd8f352398260f773',
    messagingSenderId: '73939893898',
    projectId: 'flutter-chatbot-34e70',
    authDomain: 'flutter-chatbot-34e70.firebaseapp.com',
    storageBucket: 'flutter-chatbot-34e70.appspot.com',
    measurementId: 'G-BFB5WJ900X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2W1n7UU6YY1NExo4M3JAkYC-Cli1Lk5s',
    appId: '1:73939893898:android:d458f21a12732de160f773',
    messagingSenderId: '73939893898',
    projectId: 'flutter-chatbot-34e70',
    storageBucket: 'flutter-chatbot-34e70.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-6YrqspOslQ6p1bH1TcgkX5Y_xkYKzDA',
    appId: '1:73939893898:ios:9d6c2b33394dfe4d60f773',
    messagingSenderId: '73939893898',
    projectId: 'flutter-chatbot-34e70',
    storageBucket: 'flutter-chatbot-34e70.appspot.com',
    iosBundleId: 'com.example.chatbot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-6YrqspOslQ6p1bH1TcgkX5Y_xkYKzDA',
    appId: '1:73939893898:ios:1356c38a34317aa860f773',
    messagingSenderId: '73939893898',
    projectId: 'flutter-chatbot-34e70',
    storageBucket: 'flutter-chatbot-34e70.appspot.com',
    iosBundleId: 'com.example.chatbot.RunnerTests',
  );
}

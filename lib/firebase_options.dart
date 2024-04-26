// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDZtIWp27aFJX_P8MH-ozTN0YFUy8tLYNU',
    appId: '1:952448987654:web:40d82691e83beeabc88987',
    messagingSenderId: '952448987654',
    projectId: 'product-db-d87f3',
    authDomain: 'product-db-d87f3.firebaseapp.com',
    databaseURL: 'https://product-db-d87f3-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d87f3.appspot.com',
    measurementId: 'G-3CE8VQ3XBE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmQXrOwyiHE_Y81vW-6gOlKtvSG-XOjQU',
    appId: '1:952448987654:android:ecd7fbfd3a0f1353c88987',
    messagingSenderId: '952448987654',
    projectId: 'product-db-d87f3',
    databaseURL: 'https://product-db-d87f3-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d87f3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBizcf8yp787NBX5QZ5JbVXYJylq9qeVn4',
    appId: '1:952448987654:ios:310c55b0ea256987c88987',
    messagingSenderId: '952448987654',
    projectId: 'product-db-d87f3',
    databaseURL: 'https://product-db-d87f3-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d87f3.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBizcf8yp787NBX5QZ5JbVXYJylq9qeVn4',
    appId: '1:952448987654:ios:310c55b0ea256987c88987',
    messagingSenderId: '952448987654',
    projectId: 'product-db-d87f3',
    databaseURL: 'https://product-db-d87f3-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d87f3.appspot.com',
    iosBundleId: 'com.example.product',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDZtIWp27aFJX_P8MH-ozTN0YFUy8tLYNU',
    appId: '1:952448987654:web:6c802b55cfd44b56c88987',
    messagingSenderId: '952448987654',
    projectId: 'product-db-d87f3',
    authDomain: 'product-db-d87f3.firebaseapp.com',
    databaseURL: 'https://product-db-d87f3-default-rtdb.firebaseio.com',
    storageBucket: 'product-db-d87f3.appspot.com',
    measurementId: 'G-EWTC9G7RZN',
  );
}
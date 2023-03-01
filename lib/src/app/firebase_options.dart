import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  const DefaultFirebaseOptions._();

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) throw UnsupportedError('Unsupported platform');
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _android;
      case TargetPlatform.fuchsia:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.iOS:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.linux:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.macOS:
        throw UnsupportedError('Unsupported platform');
      case TargetPlatform.windows:
        throw UnsupportedError('Unsupported platform');
    }
  }

  static const FirebaseOptions _android = FirebaseOptions(
    //Clave API web
    apiKey: 'AIzaSyDY3EwsHuqHfslYJBvXGXexja0SuFNWuPA',
    //ID de la app
    appId: '1:41798229098:android:71f22b0720be9411f83e13',
    //Número de proyecto
    messagingSenderId: '41798229098',
    //ID del proyecto
    projectId: 'appbiblioteca-d27b1',
  );
}

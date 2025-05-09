import 'package:flutter/material.dart';
import 'app/app.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyB0TdwkW-ZZtrpofyWS3kjdUxagyEXBGpU",
        authDomain: "passionpal-37198.firebaseapp.com",
        projectId: "passionpal-37198",
        storageBucket: "passionpal-37198.firebasestorage.app",
        messagingSenderId: "1085573542089",
        appId: "1:1085573542089:android:e346e275edbe345f481d18",
        measurementId: "G-2XQDX41KT5",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const PassionPalApp(),
    ),
  );
}

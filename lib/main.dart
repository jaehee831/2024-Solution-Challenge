import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rest_note/screens/auth/splash_screen.dart';
import 'package:rest_note/screens/auth/auth_complete.dart'; // AuthCompletePage 임포트

import 'package:rest_note/screens/auth/splash_screen.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moodista',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

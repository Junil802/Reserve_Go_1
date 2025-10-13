import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reserve Go',
      home: Scaffold(
        appBar: AppBar(title: const Text('Reserve Go')),
        body: const Center(child: Text('Hello Firebase!')),
      ),
    );
  }
}

// If this file does not exist or does not contain DefaultFirebaseOptions, generate it using the FlutterFire CLI.

class DefaultFirebaseOptions {
  static const currentPlatform = FirebaseOptions(
    apiKey: 'YOUR_API_KEY',
    appId: 'YOUR_APP_ID',
    messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
    projectId: 'YOUR_PROJECT_ID',
  );
}

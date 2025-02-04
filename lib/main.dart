import 'package:attendance/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD2yM0mHvz3R6Kw9Zxv7t7Jyv7t7Jyv7t7",
      appId: "1:985076041551:android:8b034ad3d843518533273a",
      messagingSenderId: "985076041551",
      projectId: "flutter-firebase-attendance",
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme:const CardTheme(
          surfaceTintColor: Colors.white,
        ),
        dialogTheme: const DialogTheme(
          surfaceTintColor: Colors.white,
          backgroundColor:Colors.white ,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_mega_project/screens/Splash_Screen.dart';
import 'package:my_mega_project/screens/Welcome_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // testData();
    return MaterialApp(
      title: 'HostelRegistrationForm',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(3, Welcome_Screen()),
    );
  }
}

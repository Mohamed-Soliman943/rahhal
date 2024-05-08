import 'package:flutter/material.dart';
import 'package:rahhal/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // fontFamily:'raleway',
      ),

      title: 'Rahhal',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

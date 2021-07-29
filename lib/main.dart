import 'package:fantastic/getting_started_screen.dart';
import 'package:fantastic/screens/home_screen.dart';
import 'package:fantastic/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fantastic',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
      routes: {
        GettingStartedScreen.id: (context) => GettingStartedScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}

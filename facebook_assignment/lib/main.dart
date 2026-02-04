import 'package:facebook/UI/home/home_screen.dart';
import 'package:facebook/UI/login/login_screen.dart';
import 'package:facebook/UI/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        LoginScreen.routeName : (context) => LoginScreen(),
        HomeScreen.routeName : (context) => HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

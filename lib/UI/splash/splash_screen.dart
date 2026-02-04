import 'dart:async';

import 'package:facebook/UI/MyColors/my_colors.dart';
import 'package:facebook/UI/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.35,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Spacer(),
                  Image.asset(
                    "assets/images/facebookLogo.png",
                    width: size.width * 0.2,
                  ),
                  Spacer(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Text(
                    "From",
                    style: TextStyle(color: MyColors.grey, fontSize: 18),
                  ),
                  Image.asset(
                    "assets/images/metaLogo.png",
                    width: size.width * 0.25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

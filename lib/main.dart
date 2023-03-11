import 'package:flutter/material.dart';
import 'package:kyoconseilapp/GetStarted.dart';
import 'HomePage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset(
          "assets/whiteIcon.png",
          width: 250.0,
          fit: BoxFit.fill,
        ),
        nextScreen: const GetStarted(),
        splashIconSize: 220,
        duration: 700,
        animationDuration: const Duration(milliseconds: 1500),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.topToBottom,
        backgroundColor: const Color(0xffFF2D56),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

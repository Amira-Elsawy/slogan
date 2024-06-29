import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:slogan_app/navigation.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 250,
      backgroundColor: Colors.black,
      splash: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
     nextScreen: const HomePage());
  }
}
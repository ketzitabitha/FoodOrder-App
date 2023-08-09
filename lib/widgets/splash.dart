import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nalam/screens/dash.dart';
import 'package:nalam/widgets/navi.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset("asset/logo.png"),
        splashIconSize: 150,
        nextScreen: Das());
  }
}

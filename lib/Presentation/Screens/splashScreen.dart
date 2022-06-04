import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rimotest/Presentation/Screens/onBoarding.dart';
import 'package:rimotest/utils/app_colors.dart';
import 'package:rimotest/utils/app_images.dart';

import '../../utils/margin.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedSplashScreen(
            centered: true,
              splash: Image.asset(kSplashAnima,),
              duration: 1000,
              nextScreen: OnBoarding(),
    splashTransition: SplashTransition.rotationTransition,
          backgroundColor: kCodGray,),
          Positioned(
            top:MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width *0.3,
              child: Image.asset(kSplashImage))

        ],
      ),

    );
  }
}

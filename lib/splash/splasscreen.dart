// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:venue_user/splash/loginpage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: false,
      splitScreenMode: true,
      designSize: Size(375, 812),
      builder: () {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: AnimatedSplashScreen(
              duration: 200,
              splash: Image(
                image: AssetImage("assets/splashimage/splash.png"),
                height: 0.5.sw,
                width: 0.5.sw,
              ),
              nextScreen: loginpage(),
              splashTransition: SplashTransition.fadeTransition,
              pageTransitionType: PageTransitionType.bottomToTop,
            ),
          ),
        );
      },
    );
  }
}

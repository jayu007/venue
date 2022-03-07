// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bground(height, width) {
  return Column(
    children: [
      Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: -0.30.sh,
              left: 0.48.sw,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
                child: Container(
                  height: 465.84.h,
                  width: 473.740.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(152),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFB9DAFB),
                        Color(0xFFE1F6F4),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.h,
              left: 0.w,
              child: Container(
                height: 367.h,
                width: 375.w,
                child: Image(
                  image: AssetImage("assets/splashimage/r1.png"),
                  fit: BoxFit.fill,
                  height: 367.h,
                  width: 375.w,
                ),
              ),
            ),
            Positioned(
              top: 30.h,
              left: 0.w,
              child: Container(
                height: 367.h,
                width: 375.w,
                child: Image(
                  image: AssetImage("assets/splashimage/r2.png"),
                  fit: BoxFit.fill,
                  height: 367.h,
                  width: 375.w,
                ),
              ),
            ),
            Positioned(
              top: 60.h,
              left: 0.w,
              child: Container(
                height: 367.h,
                width: 375.w,
                child: Image(
                  image: AssetImage("assets/splashimage/r3.png"),
                  fit: BoxFit.fill,
                  height: 367.h,
                  width: 375.w,
                ),
              ),
            ),
            Positioned(
              left: 116.w,
              top: 100.0.h,
              child: Image(
                height: 144.0.h,
                width: 140.0.w,
                alignment: Alignment.center,
                image: AssetImage("assets/splashimage/splash.png"),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget gradfont(text, fsize, color) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: fsize,
      color: color,
      letterSpacing: 1.0,
    ),
  );
}

Widget gradmfont(text, fsize, color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: fsize,
      color: color,
      letterSpacing: 1.0,
    ),
  );
}

class background extends StatelessWidget {
  const background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        bground(
          MediaQuery.of(context).size.height * 0.48,
          MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}

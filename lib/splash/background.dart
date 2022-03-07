// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class backgroundlo extends StatelessWidget {
  final Widget child;

  const backgroundlo({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          // Positioned(
          //   top: -137.89.h,
          //   left: 185.5.w,
          //   child: Transform(
          //     transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
          //     child: Container(
          //       height: 465.84.h,
          //       width: 473.74.w,
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Color(0xFFEEF2E2),
          //           width: 1.0,
          //         ),
          //         borderRadius: BorderRadius.circular(152),
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: -187.89.h,
          //   left: 188.5.w,
          //   child: Transform(
          //     transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
          //     child: Container(
          //       height: 465.84.h,
          //       width: 473.74.w,
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Color(0xFFEEF2E2),
          //           width: 1.0,
          //         ),
          //         borderRadius: BorderRadius.circular(152),
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: -0.30.sh,
          //   left: 0.48.sw,
          //   child: Transform(
          //     transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
          //     child: Container(
          //       height: 465.84.h,
          //       width: 473.740.w,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(152),
          //         gradient: LinearGradient(
          //           colors: [
          //             Color(0xFFB9DAFB),
          //             Color(0xFFE1F6F4),
          //           ],
          //           begin: Alignment.bottomLeft,
          //           end: Alignment.topRight,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 0.h,
          //   left: 0.w,
          //   child: Container(
          //     height: 367.h,
          //     width: 375.w,
          //     child: Image(
          //       image: AssetImage("assets/splashimage/r1.png"),
          //       fit: BoxFit.fill,
          //       height: 367.h,
          //       width: 375.w,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 30.h,
          //   left: 0.w,
          //   child: Container(
          //     height: 367.h,
          //     width: 375.w,
          //     child: Image(
          //       image: AssetImage("assets/splashimage/r2.png"),
          //       fit: BoxFit.fill,
          //       height: 367.h,
          //       width: 375.w,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 60.h,
          //   left: 0.w,
          //   child: Container(
          //     height: 367.h,
          //     width: 375.w,
          //     child: Image(
          //       image: AssetImage("assets/splashimage/r3.png"),
          //       fit: BoxFit.fill,
          //       height: 367.h,
          //       width: 375.w,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: 116.w,
          //   top: 100.0.h,
          //   child: Image(
          //     height: 144.0.h,
          //     width: 140.0.w,
          //     alignment: Alignment.center,
          //     image: AssetImage("assets/splashimage/splash.png"),
          //   ),
          // ),
          Positioned(
            top: -20,
            right: 10,
            child: Container(
              height: 140.0,
              width: 140.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFB9DAFB).withOpacity(0.1),
                    spreadRadius: 50.0,
                    blurRadius: 600.0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 10,
            child: Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFB9DAFB).withOpacity(0.3),
                    spreadRadius: 50.0,
                    blurRadius: 600.0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: -80,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9895EE).withOpacity(0.2),
                    spreadRadius: 50.0,
                    blurRadius: 600.0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            right: -70,
            child: Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 50.0,
                    blurRadius: 600.0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            right: -90,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFC55492).withOpacity(0.2),
                    spreadRadius: 50.0,
                    blurRadius: 600.0,
                  )
                ],
              ),
            ),
          ),

          child,
        ],
      ),
    );
  }
}

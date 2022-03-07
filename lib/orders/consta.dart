// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class appbarorder extends StatelessWidget {
  const appbarorder({Key? key, required this.text, required this.img})
      : super(key: key);
  final String text, img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(
              width: 21.w,
              height: 21.h,
              fit: BoxFit.fill,
              image: AssetImage(
                img,
              ),
            ),
          ),
          SizedBox(
            width: 18.0.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.0.h),
            child: GradientText(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0.sp,
                letterSpacing: 1.0,
              ),
              colors: [
                Color(0xFF53E88B),
                Color(0xFF15BE77),
              ],
              gradientDirection: GradientDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}

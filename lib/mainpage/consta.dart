import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var tstyle = TextStyle(
  color: Color(0xFF0D2B4C),
  fontSize: 16.0.sp,
  fontWeight: FontWeight.bold,
  letterSpacing: 0.8,
);

Widget imgstack(String img, String name, Color color) {
  return Stack(
    children: [
      SizedBox(
        height: 95.0.h,
        width: 95.0.w,
        child: Container(
          height: 86.0.h,
          width: 95.0.w,
          child: Image(
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            image: AssetImage(
              img,
            ),
            height: 86.0.h,
            width: 95.0.w,
          ),
        ),
      ),
      Positioned(
        right: 7.0.w,
        bottom: 0,
        child: Container(
          height: 20.0.h,
          width: 81.0.w,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 9.0.sp,
                letterSpacing: 0.5.w,
                color: Color(0xFF0D2B4C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var bacround = const BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.fill,
    image: AssetImage("assets/splashimage/loginscreen.jpg"),
  ),
);
var sbox = TextStyle(
  color: Colors.white,
  letterSpacing: 1.0,
  fontSize: 16.0.sp,
);
var tremsstyle = TextStyle(
  color: Color(0xFF64748B),
  fontSize: 13.0.sp,
  letterSpacing: 1.5,
  fontWeight: FontWeight.bold,
);
Widget btn(txt) => Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFFB9DAFB),
            Color(0xFFE1F6F4),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      width: 271.w,
      height: 58.h,
      child: Stack(
        children: [
          Positioned(
            top: 15.h,
            right: 10.w,
            child: Image(
              height: 35.h,
              width: 35.w,
              fit: BoxFit.fill,
              image: AssetImage("assets/icon/person/back.png"),
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 119.w,
            child: Text(
              txt,
              style: TextStyle(
                color: Color(0xFF0D2B4C),
                fontWeight: FontWeight.bold,
                fontSize: 16.0.sp,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );

var formside = OutlineInputBorder(
  borderSide: const BorderSide(
    color: Colors.transparent,
    width: 1.0,
  ),
  borderRadius: BorderRadius.circular(10),
);

var errtexbox = UnderlineInputBorder(
  borderRadius: BorderRadius.circular(15.0),
  borderSide: const BorderSide(
    width: 1.5,
    color: Colors.red,
  ),
);

var hinttextstyle = TextStyle(
  color: Color(0xFF3B3B3B),
  letterSpacing: 1,
);

InputDecoration decoration(img, txt) {
  return InputDecoration(
    border: InputBorder.none,
    errorBorder: errtexbox,
    prefixIcon: Image(
      height: 18.0.h,
      width: 18.0.w,
      image: AssetImage(
        img,
      ),
    ),
    hintText: txt,
    contentPadding: EdgeInsets.only(top: 15.h),
    errorStyle: TextStyle(fontSize: 0.0),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w500,
      letterSpacing: 1.0,
      color: Color(0xFF3B3B3B).withOpacity(0.4),
    ),
  );
}

var boxdeco = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 10,
      offset: Offset(0, 10),
    ),
  ],
  borderRadius: BorderRadius.circular(15.0),
);

class linearGradientMask extends StatelessWidget {
  linearGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF53E88B),
          Color(0xFF15BE77),
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}

// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class backgroundmain extends StatelessWidget {
  final Widget child;

  const backgroundmain({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: -20,
            right: 10,
            child: Container(
              height: 140.0.h,
              width: 140.0.w,
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
              height: 110.0.h,
              width: 110.0.w,
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
            top: 300.0.h,
            left: -60.0.w,
            child: Container(
              height: 100.0.h,
              width: 100.0.w,
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
            top: 0,
            right: 0,
            child: Container(
              height: 100.0.h,
              width: 100.0.w,
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
            bottom: 0,
            left: -80,
            child: Container(
              height: 100.0.h,
              width: 100.0.w,
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
              height: 110.0.h,
              width: 110.0.w,
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
              height: 100.0.h,
              width: 100.0.w,
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

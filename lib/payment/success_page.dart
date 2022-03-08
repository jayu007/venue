// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venue_user/background.dart';
import 'package:venue_user/consta.dart';
import 'package:venue_user/mainpage/consta.dart';
import 'package:venue_user/mainpage/homepage.dart';

class success_page extends StatefulWidget {
  const success_page({Key? key}) : super(key: key);

  @override
  State<success_page> createState() => _success_pageState();
}

class _success_pageState extends State<success_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: () {
            return backgroundmain(
              child: Container(
                height: 812.0.h,
                width: 375.0.w,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 250.0.h,
                      ),
                      Image(
                        image: AssetImage('assets/mainpage/success.png'),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      linearGradientMask(
                        child: Text(
                          'Congrats!',
                          style: tstyle.copyWith(
                              color: Colors.white, fontSize: 30.0.sp),
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Text(
                        'Thank You! Booking Completed',
                        style: tstyle.copyWith(
                          fontSize: 18.0.sp,
                          color: Color(0xFF09051C),
                        ),
                      ),
                      SizedBox(
                        height: 250.0.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepagem()),
                              (route) => false);
                        },
                        child: Container(
                          width: 157.0.w,
                          height: 57.0.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF53E88B),
                                Color(0xFF15BE77),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              'Go To Bookings',
                              style: tstyle.copyWith(
                                color: Colors.white,
                                fontSize: 15.0.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

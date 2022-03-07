// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venue_user/background.dart';
import 'package:venue_user/consta.dart';
import 'package:venue_user/mainpage/consta.dart';
import 'package:venue_user/payment/success_page.dart';

class payment_page extends StatefulWidget {
  const payment_page({Key? key}) : super(key: key);

  @override
  State<payment_page> createState() => _payment_pageState();
}

class _payment_pageState extends State<payment_page> {
  late String val;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return Scaffold(
          body: backgroundmain(
            child: SizedBox(
              height: 812.0.h,
              width: 375.0.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 94.0.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0.h),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 23.97.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0.h),
                          child: Image(
                            image: AssetImage("assets/mainpage/payment.png"),
                            width: 22.w,
                            height: 20.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 15.0.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9.0.h),
                          child: Text(
                            'Payment Page',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xFF0D2B4C),
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 716.0.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45.0.h,
                        ),
                        SizedBox(
                          width: 320.0.w,
                          // height: 195.0.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Payment Option',
                                style: tstyle.copyWith(
                                  fontSize: 16.0.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.0.h,
                              ),
                              ListTile(
                                leading: Image(
                                  fit: BoxFit.fill,
                                  height: 13.04.h,
                                  width: 37.08.w,
                                  image: AssetImage('assets/mainpage/upi.png'),
                                ),
                                title: Text(
                                  'UPI',
                                  style: tstyle.copyWith(
                                    letterSpacing: 1.5,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Image(
                                  fit: BoxFit.fill,
                                  height: 20.57.h,
                                  width: 17.91.w,
                                  image:
                                      AssetImage('assets/mainpage/paypal.png'),
                                ),
                                title: Text(
                                  'PayPal',
                                  style: tstyle.copyWith(
                                    fontSize: 14.0.sp,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Image(
                                  fit: BoxFit.fill,
                                  height: 10.59.h,
                                  width: 25.71.w,
                                  image: AssetImage('assets/mainpage/gpay.png'),
                                ),
                                title: Text(
                                  'Google Pay',
                                  style: tstyle.copyWith(
                                    letterSpacing: 1.5,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Image(
                                  fit: BoxFit.fill,
                                  height: 30.h,
                                  width: 30.w,
                                  image:
                                      AssetImage('assets/mainpage/laptop.png'),
                                ),
                                title: Text(
                                  'Net Banking',
                                  style: tstyle.copyWith(
                                    letterSpacing: 1.5,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 224.0.h,
                          width: 347.0.w,
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
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 11.0.h,
                                right: 11.0.w,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => success_page(),
                                        ),
                                        (route) => false);
                                  },
                                  child: Container(
                                    height: 57.0.h,
                                    width: 325.0.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Center(
                                      child: linearGradientMask(
                                        child: Text(
                                          'Pay My Venue',
                                          style: tstyle.copyWith(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

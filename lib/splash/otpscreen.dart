// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:venue_user/mainpage/homepage.dart';

import '../consta.dart';
import 'background.dart';
import 'bg.dart';

class otpScreen extends StatefulWidget {
  final String email;
  final String m_number;

  const otpScreen({Key? key, required this.email, required this.m_number})
      : super(key: key);

  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  void _sendotp() {
    int min = 1000;
    int max = 9999;
    var randomizer = Random();
    var rNum = min + randomizer.nextInt(max - min);
  }

  @override
  void initState() {
    super.initState();
  }

  Future<String?> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Resend Code In  ",
          style: TextStyle(fontSize: 14.0.sp),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) {
            return value == 0
                ? InkWell(
                    onTap: () {
                      setState(() {
                        value = 30;
                      });
                    },
                    child: Text(
                      "Click Here",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  )
                : Text(
                    "00:${value.toInt()}",
                    style: TextStyle(color: Colors.greenAccent),
                  );
          },
        ),
      ],
    );
  }

  void moveToNextScreen(context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => homepagem(),
      ),
      (route) => false,
    );
  }

  var pin;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return Scaffold(
          body: SingleChildScrollView(
            child: backgroundlo(
              child: Container(
                height: 812.h,
                width: 375.w,
                child: Column(
                  children: [
                    background(),
                    gradfont(
                      "Verification",
                      24.0.sp,
                      Color(0xFF120D26),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 60.0.w,
                        left: 20.0.w,
                      ),
                      child: gradmfont(
                        "We've Send You The Verification Code on +91 " +
                            widget.m_number,
                        14.0.sp,
                        Color(0xFF0D2B4C),
                      ),
                    ),
                    SizedBox(
                      height: 40.0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: OTPTextField(
                        width: MediaQuery.of(context).size.width,
                        length: 4,
                        keyboardType: TextInputType.number,
                        otpFieldStyle: OtpFieldStyle(
                          focusBorderColor: Color(0xFFD2EEF9),
                        ),
                        fieldWidth: 60.0,
                        style: TextStyle(fontSize: 17),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (val) {
                          pin = val;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        print(pin);
                        if (pin == "1234") {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("otp is valid"),
                            ),
                          );
                          moveToNextScreen(context);
                          print("yes");
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("otp is not valid"),
                            ),
                          );
                          print("No");
                        }
                      },
                      child: btn("Continue"),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    buildTimer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

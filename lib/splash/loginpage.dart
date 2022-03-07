// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:venue_user/mainpage/homepage.dart';
import 'package:venue_user/splash/signinpage.dart';
import 'package:venue_user/utility/service.dart';

import '../consta.dart';
import 'background.dart';
import 'bg.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool isVisible = true;
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  Future login() async {
    String responce = await Services().login(_username.text, _password.text);
    if (responce == 'Login Matched') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(responce),
        ),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => homepagem(),
        ),
        (route) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(responce),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: false,
      splitScreenMode: true,
      builder: () {
        return Scaffold(
          body: backgroundlo(
            child: Container(
              height: 812.h,
              width: 375.w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    background(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: gradfont('Welcome Back !', 28.0.sp, Colors.black),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: gradmfont(
                        'Log In To Your Existing Account Of Venue For Event',
                        12.0.sp,
                        Color(0xFF0D2B4C)
                            .withRed(0)
                            .withGreen(0)
                            .withGreen(0)
                            .withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.w,
                              vertical: 5.h,
                            ),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _username,
                                  decoration: decoration(
                                    "assets/icon/person/Profile.png",
                                    "Username..",
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                              "username must be non empty"),
                                        ),
                                      );
                                      return "non empty field";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.0.w,
                              vertical: 10.0.h,
                            ),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _password,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    errorBorder: errtexbox,
                                    prefixIcon: Image(
                                      height: 18.0.h,
                                      width: 18.0.w,
                                      image: AssetImage(
                                        "assets/icon/person/Lock.png",
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      hoverColor: Colors.transparent,
                                      onPressed: () {
                                        setState(() {
                                          isVisible = !isVisible;
                                        });
                                      },
                                      icon: Icon(
                                        isVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    hintText: "Password..",
                                    contentPadding: EdgeInsets.only(top: 15.h),
                                    errorStyle: TextStyle(fontSize: 0.0),
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.0,
                                      color: Color(0xFF3B3B3B).withOpacity(0.4),
                                    ),
                                  ),
                                  obscureText: isVisible,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          duration: Duration(seconds: 1),
                                          content: Text(
                                              "Password must be non empty"),
                                        ),
                                      );
                                      return "non empty field";
                                    }
                                    return "";
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.0.w,
                        vertical: 5.0.h,
                      ),
                      alignment: Alignment.centerRight,
                      child: GradientText(
                        "Forgot Your Password?",
                        style: TextStyle(
                          fontSize: 12.0.sp,
                        ),
                        colors: const [
                          Color(0XFF53E88B),
                          Color(0xFF15BE77),
                        ],
                        gradientDirection: GradientDirection.ttb,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontSize: 14.0.sp,
                                  color: Color(0xFFC4C4C4),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0.w),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => signIn(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 13.0.sp,
                                      color: Color(0xFF0D2B4C).withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => homepagem(),
                                ),
                                (route) => false,
                              );
                            },
                            child: btn("Login"),
                          ),
                        ],
                      ),
                    ),
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

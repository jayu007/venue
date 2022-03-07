// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venue_user/mainpage/homepage.dart';
import 'package:venue_user/utility/service.dart';

import '../consta.dart';
import 'background.dart';
import 'bg.dart';

class addressPage extends StatefulWidget {
  final String email;

  const addressPage({Key? key, required this.email}) : super(key: key);

  @override
  _addressPageState createState() => _addressPageState();
}

class _addressPageState extends State<addressPage> {
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;
  var _address = TextEditingController();
  var _city = TextEditingController();
  var _state = TextEditingController();
  var _pincode = TextEditingController();

  Future signin() async {
    String responce = await Services().addsignin(
        widget.email, _address.text, _city.text, _state.text, _pincode.text);
    if (responce == 'success') {
      setState(() {
        _pincode.clear();
        _state.clear();
        _address.clear();
        _city.clear();
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(responce)));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(responce)));
    }
  }

  void _submit() {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(milliseconds: 500),
          content: Text(
            "All field must be non-empty",
          ),
        ),
      );
      return;
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => homepagem()),
        (route) => false,
      );
      signin();
    }
    _formkey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
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
                      child: gradfont(
                        'Fill Your Address',
                        26.0.sp,
                        Colors.black,
                      ),
                    ),
                    Container(
                      height: 10.0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: gradmfont(
                        'This Data Will Be Displayed In Your Account Profile For Security',
                        11.0.sp,
                        Color(0xFF0D2B4C).withOpacity(0.8),
                      ),
                    ),
                    Container(
                      height: 20.0,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.12.h),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _address,
                                  decoration: decoration(
                                    "assets/icon/add7.png",
                                    "Address Line..",
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "esf";
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.12.h),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _city,
                                  decoration: decoration(
                                    "assets/icon/add8.png",
                                    "City..",
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "esf";
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.12.h),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _state,
                                  decoration: decoration(
                                    "assets/icon/add9.png",
                                    "State..",
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "esf";
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.12.h),
                            child: Container(
                              decoration: boxdeco,
                              height: 57.h,
                              width: 325.w,
                              child: Center(
                                child: TextFormField(
                                  controller: _pincode,
                                  decoration: decoration(
                                    "assets/icon/add10.png",
                                    "Pincode..",
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "esf";
                                    } else if (val.length != 6) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(milliseconds: 500),
                                          content: Text(
                                            "Enter valid pincode",
                                          ),
                                        ),
                                      );
                                      return "esf";
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10.0.h,
                    ),
                    InkWell(
                      onTap: () {
                        _submit();
                      },
                      child: btn("Sign In"),
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

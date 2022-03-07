// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import '../consta.dart';
import 'background.dart';
import 'bg.dart';
import 'loginpage.dart';
import 'otpscreen.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;

  var _name = TextEditingController();
  var _email = TextEditingController();
  var _number = TextEditingController();
  var _password = TextEditingController();
  void _submit() {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      signIn();
    }
    _formkey.currentState!.save();
  }

  Future signin() async {
    String name = _name.text;
    String email = _email.text;
    String mobile_no = _number.text;
    String password = _password.text;
    String url = 'http://192.168.0.107/venue/user/insert.php';
    var data = {
      'name': name,
      'email': email,
      'mobile_no': mobile_no,
      'password': password
    };
    var responce = await http.post(Uri.parse(url), body: json.encode(data));
    var message = jsonDecode(responce.body);
    if (message == 'Success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Data inserted")));
      setState(() {
        _name.clear();
        _email.clear();
        _number.clear();
        _password.clear();
      });
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => otpScreen(
              email: email,
              m_number: mobile_no,
            ),
          ),
          (route) => false);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return Scaffold(
          body: backgroundlo(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    background(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: gradfont(
                        "Let's Get Start..",
                        26.0.sp,
                        Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: gradfont(
                        "Create An Account To Get All Features",
                        12.0.sp,
                        Color(0xFF0D2B4C),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.0.w,
                              vertical: 0.5.h,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.12),
                              child: Container(
                                height: 57.h,
                                width: 325.w,
                                decoration: boxdeco,
                                child: Center(
                                  child: TextFormField(
                                    controller: _name,
                                    decoration: decoration(
                                        "assets/icon/sign/Profile.png",
                                        "Name.."),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            duration:
                                                Duration(milliseconds: 500),
                                            content:
                                                Text("Name can't be empty"),
                                          ),
                                        );
                                        return "";
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.12),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: decoration(
                                      "assets/icon/sign/Message.png",
                                      "Email.."),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(value)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(milliseconds: 500),
                                          content:
                                              Text("E-mail can't be empty"),
                                        ),
                                      );
                                      return 'Enter a valid email!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.12),
                            child: Container(
                              height: 57.h,
                              width: 325.w,
                              decoration: boxdeco,
                              child: Center(
                                child: TextFormField(
                                  controller: _number,
                                  keyboardType: TextInputType.number,
                                  decoration: decoration(
                                      "assets/icon/sign/Call.png", "Number.."),
                                  validator: (val) {
                                    if (val!.length < 10 || val.length > 10) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(milliseconds: 500),
                                          content: Text("Enter Valid Number!"),
                                        ),
                                      );
                                      return '';
                                    }
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
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF90A4AE),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => loginpage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: signin,
                            child: btn("Sign In"),
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

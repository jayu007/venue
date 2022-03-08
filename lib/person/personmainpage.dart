// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, camel_case_types, unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:venue_user/background.dart';
import 'package:venue_user/consta.dart';
import 'package:venue_user/model/login.dart';
import 'package:venue_user/orders/consta.dart';
import 'package:venue_user/splash/loginpage.dart';

class persommainpage extends StatefulWidget {
  const persommainpage({Key? key}) : super(key: key);

  @override
  _persommainpageState createState() => _persommainpageState();
}

class _persommainpageState extends State<persommainpage> {
  final _formkey = GlobalKey<FormState>();

  List<UserDetail> userlist = [
    UserDetail(
        ownerId: 0,
        name: 'Jay',
        email: 'jaymalaviya037@gmail.com',
        mobileNo: 7894561230,
        addressLine: 'Punagam',
        city: 'Surat',
        state: 'Gujrat',
        pincode: 789456,
        password: 'aa',
        beneficiallyName: 'jay Malaviya',
        upiId: '1234567890@ybl'),
  ];
  @override
  initState() {
    getdata();
    super.initState();
  }

  bool loading = true;
  String email = "jaymalaviya037@gmail.com";
  // Future done() async {
  //   List<dynamic> responce = await Service().getData(email);
  //
  //   user_details = List<UserDetail>.from(
  //     responce.map(
  //       (user) => UserDetail.fromJson(user),
  //     ),
  //   ).toList();
  //   print(user_details);
  //   if (responce == 'error') {
  //     return ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("responce1")));
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("0")));
  //   }
  // }

  List<UserDetail> userFromJson(String jsonString) {
    final data = json.decode(jsonString);
    return List<UserDetail>.from(
      data.map(
        (item) => UserDetail.fromJson(item),
      ),
    );
  }

  Future<List<UserDetail>> getdata() async {
    var url = "http://192.168.0.107/venue/getdata.php";

    var data = {'email': email};

    var responce = await http.post(Uri.parse(url), body: json.encode(data));
    var result = await http.get(Uri.parse(url));
    var jsonData = json.decode(result.body);
    List<UserDetail> userDetails = [];
    if (responce.body == 'error') {
      return userDetails;
    } else {
      userDetails = userFromJson(result.body);
      return userDetails;
    }
  }

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _add = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController _pincode = TextEditingController();
  TextEditingController _bname = TextEditingController();
  TextEditingController _upi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(372, 738),
      builder: () {
        UserDetail user = userlist[0];
        return FutureBuilder(builder: (context, snapshot) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: backgroundmain(
              child: SizedBox(
                height: 738.h,
                width: 375.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 44.0.h,
                    ),
                    SizedBox(
                      height: 692.h,
                      child: Form(
                        key: _formkey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 32.0.w),
                                child: SizedBox(
                                  height: 47.0.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      appbarorder(
                                        text: "My Profile",
                                        img: "assets/icon/ordericon.png",
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      loginpage()),
                                              (route) => false);
                                        },
                                        icon: Image(
                                          height: 28.0.h,
                                          width: 28.0.h,
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              "assets/icon/logout.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.0.w,
                                  vertical: 6.5.h,
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 57.h,
                                    width: 325.w,
                                    child: Center(
                                      child: TextFormField(
                                        controller: _name..text = user.name,
                                        decoration: decoration(
                                            "assets/icon/sign/Profile.png",
                                            "Username.."),
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "";
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.0.w,
                                  vertical: 6.5.h,
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 57.h,
                                    width: 325.w,
                                    child: Center(
                                      child: TextFormField(
                                        controller: _email..text = user.email,
                                        decoration: decoration(
                                            "assets/icon/sign/Message.png",
                                            "E-mail.."),
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "";
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.0.w,
                                  vertical: 6.5.h,
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 57.h,
                                    width: 325.w,
                                    child: Center(
                                      child: TextFormField(
                                        controller: _number
                                          ..text = user.mobileNo.toString(),
                                        decoration: decoration(
                                            "assets/icon/Call.png",
                                            "Mobile Number.."),
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "";
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 7.0.w,
                                  vertical: 6.5.h,
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 57.h,
                                    width: 325.w,
                                    child: Center(
                                      child: TextFormField(
                                        controller: _pass..text = user.password,
                                        decoration: decoration(
                                            "assets/icon/person/Lock.png",
                                            "Password.."),
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "";
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80.0.h,
                              ),
                              InkWell(
                                onTap: () {},
                                child: SizedBox(
                                  height: 58,
                                  width: 271,
                                  child: Card(
                                    shadowColor: Colors.black.withOpacity(0.5),
                                    color: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                                      width: 75.w,
                                      height: 50.0.h,
                                      child: Text(
                                        "Update Profile",
                                        style: TextStyle(
                                          color: Color(0xFF0D2B4C)
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0.sp,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100.0.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Privacy Policy',
                                    style: tremsstyle,
                                  ),
                                  Text(
                                    '>',
                                    style: tremsstyle,
                                  ),
                                  Text(
                                    'Terms',
                                    style: tremsstyle,
                                  ),
                                  Text(
                                    '>',
                                    style: tremsstyle,
                                  ),
                                  Text(
                                    'Rate US',
                                    style: tremsstyle,
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Color(0xFF64748B),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}

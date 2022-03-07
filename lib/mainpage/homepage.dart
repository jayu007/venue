// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venue_user/mainpage/mainpage.dart';

class homepagem extends StatefulWidget {
  const homepagem({Key? key}) : super(key: key);

  @override
  State<homepagem> createState() => _homepagemState();
}

class _homepagemState extends State<homepagem> {
  int pageIndex = 0;

  bool loading = true;

  var pages = [
    home(),
    home(),
    home(),
  ];
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 738),
        builder: () {
          return Scaffold(
            extendBody: true,
            body: pages[pageIndex],
            bottomNavigationBar: Container(
              height: 74.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: SizedBox(
                      width: 405.w,
                      height: 74.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 40.w,
                            height: 52.h,
                            child: InkWell(
                              hoverColor: Colors.blue,
                              onTap: () {
                                setState(() {
                                  pageIndex = 0;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 3.w),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/icon/bottomicon/Home.png"),
                                        height: 23.75.h,
                                        width: 25.w,
                                        color: pageIndex == 0
                                            ? null
                                            : Colors.black54.withOpacity(0.5),
                                      ),
                                      SizedBox(
                                        height: 3.w,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                          fontSize: 11.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: pageIndex == 0
                                              ? Color(0xFF0D2B4C)
                                              : Color(0xFF0D2B4C)
                                                  .withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40.w,
                            height: 52.h,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  pageIndex = 1;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 3.w),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/icon/bottomicon/cart.png"),
                                      height: 23.75.h,
                                      width: 25.w,
                                      color: pageIndex == 1
                                          ? null
                                          : Colors.black54.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Text(
                                      "Orders",
                                      style: TextStyle(
                                        fontSize: 11.0.sp,
                                        fontWeight: FontWeight.bold,
                                        color: pageIndex == 1
                                            ? Color(0xFF0D2B4C)
                                            : Color(0xFF0D2B4C)
                                                .withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40.w,
                            height: 52.h,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  pageIndex = 2;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 3.w),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/icon/bottomicon/person.png"),
                                      height: 23.75.h,
                                      width: 25.w,
                                      color: pageIndex == 2
                                          ? null
                                          : Colors.black54.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Text(
                                      "Person",
                                      style: TextStyle(
                                        fontSize: 11.0.sp,
                                        fontWeight: FontWeight.bold,
                                        color: pageIndex == 2
                                            ? Color(0xFF0D2B4C)
                                            : Color(0xFF0D2B4C)
                                                .withOpacity(0.5),
                                      ),
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
                ),
              ),
            ),
          );
        });
  }
}

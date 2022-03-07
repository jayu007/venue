// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venue_user/background.dart';
import 'package:venue_user/consta.dart';
import 'package:venue_user/mainpage/consta.dart';
import 'package:venue_user/mainpage/detail_page.dart';
import 'package:venue_user/model/product.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final String location = 'Yogichawk,Surat';
  Widget size(String location) {
    return SizedBox(
      height: 97.h,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 54.h,
            ),
            SizedBox(
              height: 21.h,
              width: 337.w,
              // color: Colors.green,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                    child: linearGradientMask(
                      child: ImageIcon(
                        AssetImage('assets/mainpage/map.png'),
                        color: Colors.white,
                        size: 18.sp,
                      ),
                    ),
                  ),
                  linearGradientMask(
                    child: Text(
                      location,
                      style: TextStyle(
                        letterSpacing: 0.8.w,
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                    child: Image(
                      image: AssetImage('assets/mainpage/filter.png'),
                      height: 24.0.h,
                      width: 24.0.w,
                    ),
                  ),
                  linearGradientMask(
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        fontSize: 13.0.sp,
                        letterSpacing: 0.8.w,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () {
          return backgroundmain(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  size(location),
                  Column(
                    children: [
                      SizedBox(
                        height: 131.0.h,
                        width: 320.0.w,
                        child: Column(
                          children: [
                            Container(
                              height: 21.h,
                              width: 320.w,
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/mainpage/types.png'),
                                    color: Color(0xFF0D2B4C),
                                    size: 24.sp,
                                  ),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text(
                                    'Types of venue',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0.sp,
                                      letterSpacing: 1.0.w,
                                      color: Color(0xFF0D2B4C),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: imgstack(
                                      'assets/mainpage/image/1.png',
                                      'Party Plots',
                                      Color(0xFFFCEAEA),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: imgstack(
                                      'assets/mainpage/image/2.png',
                                      'Marriage Hall',
                                      Color(0xFFE5F3FB),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: imgstack(
                                      'assets/mainpage/image/3.png',
                                      'Socities Hall',
                                      Color(0xFFFCEAEA),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 17.0.h,
                            ),
                            Container(
                              height: 21.h,
                              width: 320.w,
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                      'assets/mainpage/home.png',
                                    ),
                                    color: Color(0xFF0D2B4C),
                                    size: 24.sp,
                                  ),
                                  SizedBox(
                                    width: 5.0.w,
                                  ),
                                  Text(
                                    'Venues',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0.sp,
                                      letterSpacing: 1.0.w,
                                      color: Color(0xFF0D2B4C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 308.42.w,
                              height: 545.h,
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: 26.0.h),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                detailpage(index: index),
                                          ),
                                          (route) => true,
                                        );
                                      },
                                      child: Hero(
                                        tag: index,
                                        child: Stack(
                                          children: [
                                            Card(
                                              elevation: 0.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Container(
                                                height: 305.h,
                                                width: 307.56.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                        product_list[index]
                                                            .image[0],
                                                      ),
                                                      fit: BoxFit.fitHeight),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  color: Colors.white,
                                                ),
                                                height: 80.0.h,
                                                width: 308.42.w,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20.0.w,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        product_list[index]
                                                            .name,
                                                        style: TextStyle(
                                                          fontSize: 18.0.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xFF0D2B4C),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 8.0.h,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          ImageIcon(
                                                            AssetImage(
                                                              'assets/mainpage/image/wall.png',
                                                            ),
                                                            color: Color(
                                                                0xFF0D2B4C),
                                                            size: 18.sp,
                                                          ),
                                                          SizedBox(
                                                            width: 10.0.w,
                                                          ),
                                                          Text(
                                                            product_list[index]
                                                                .deposite
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 11.0.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color(
                                                                      0xFF0D2B4C)
                                                                  .withOpacity(
                                                                      0.5),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 20.0.w,
                                                          ),
                                                          ImageIcon(
                                                            AssetImage(
                                                              'assets/mainpage/image/rupp.png',
                                                            ),
                                                            color: Color(
                                                                0xFF0D2B4C),
                                                            size: 18.sp,
                                                          ),
                                                          SizedBox(
                                                            width: 5.0.w,
                                                          ),
                                                          Text(
                                                            product_list[index]
                                                                .rent
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 11.0.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color(
                                                                      0xFF0D2B4C)
                                                                  .withOpacity(
                                                                      0.5),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 25.0.h,
                                              left: 20.85.w,
                                              child: Container(
                                                height: 22.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 8.0.w),
                                                  child: Row(
                                                    children: [
                                                      ImageIcon(
                                                        AssetImage(
                                                          'assets/mainpage/map.png',
                                                        ),
                                                        size: 12.0.sp,
                                                      ),
                                                      SizedBox(
                                                        width: 5.0.w,
                                                      ),
                                                      Text(
                                                        product_list[index].add,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF0D2B4C),
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

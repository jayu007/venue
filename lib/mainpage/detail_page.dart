// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venue_user/background.dart';
import 'package:venue_user/mainpage/consta.dart';
import 'package:venue_user/model/product.dart';
import 'package:venue_user/payment/payment_page.dart';

class detailpage extends StatefulWidget {
  final int index;
  const detailpage({Key? key, required this.index}) : super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return Scaffold(
          body: backgroundmain(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
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
                            image: AssetImage("assets/icon/addpro.png"),
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
                            'About Property',
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
                  Container(
                    height: 627.0.h,
                    child: Column(
                      children: [
                        Container(
                          height: 180.0.h,
                          width: 350.0.w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  product_list[widget.index].image.length,
                              itemBuilder: (c, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.0.w),
                                  child: Container(
                                    height: 180.0.h,
                                    width: 325.0.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            product_list[0].image[index]),
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.red,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 29.0.h,
                        ),
                        SizedBox(
                          height: 65.0.h,
                          width: 326.0.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product_list[widget.index].name,
                                style: TextStyle(
                                    color: Color(0xFF0D2B4C),
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Venue Type: ${product_list[widget.index].type}',
                                style: TextStyle(
                                  color: Color(0xFF0D2B4C),
                                  fontSize: 14.0.sp,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Deposite: ${product_list[widget.index].deposite}',
                                    style: TextStyle(
                                      color: Color(0xFF0D2B4C),
                                      fontSize: 14.0.sp,
                                    ),
                                  ),
                                  Text(
                                    'Rent: ${product_list[widget.index].rent}',
                                    style: TextStyle(
                                      color: Color(0xFF0D2B4C),
                                      fontSize: 14.0.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                        SizedBox(
                          height: 293.0.h,
                          width: 326.0.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description:',
                                style: TextStyle(
                                    color: Color(0xFF0D2B4C),
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                product_list[widget.index].des,
                                style: TextStyle(
                                  color: Color(0xFF0D2B4C),
                                  fontSize: 12.0.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0.h,
                          width: 325.0.w,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/mainpage/home.png'),
                                height: 20.0.h,
                                width: 20.0.h,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 5.0.w,
                              ),
                              Text(
                                product_list[widget.index].add,
                                style: TextStyle(
                                  color: Color(0xFF0D2B4C),
                                  fontSize: 14.0.sp,
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                        SizedBox(
                          height: 20.0.h,
                          width: 325.0.w,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/mainpage/build.png'),
                                height: 20.0.h,
                                width: 20.0.h,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 5.0.w,
                              ),
                              Text(
                                product_list[widget.index].state,
                                style: TextStyle(
                                  color: Color(0xFF0D2B4C),
                                  fontSize: 14.0.sp,
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 325.0.w,
                    height: 91.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 24.0.h,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/mainpage/map.png'),
                                height: 24.0.h,
                                width: 24.0.h,
                                fit: BoxFit.fill,
                                color: Color(0xFF0D2B4C),
                              ),
                              SizedBox(
                                width: 5.0.w,
                              ),
                              Text(
                                'Get Direction',
                                style: tstyle,
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => payment_page()),
                            );
                          },
                          child: Container(
                            height: 58.0.h,
                            width: 167.0.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.w),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFB9DAFB),
                                  Color(0XFFE1F6F4),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Book Venue',
                                    style: tstyle,
                                  ),
                                  Image(
                                    image:
                                        AssetImage('assets/mainpage/book.png'),
                                    height: 25.0.h,
                                    width: 25.0.h,
                                    fit: BoxFit.fill,
                                  ),
                                ],
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
          ),
        );
      },
    );
  }
}

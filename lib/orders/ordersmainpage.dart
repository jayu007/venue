// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:venue_user/model/order.dart';
import 'package:venue_user/orders/consta.dart';

class ordermainpage extends StatefulWidget {
  const ordermainpage({Key? key}) : super(key: key);

  @override
  _ordermainpageState createState() => _ordermainpageState();
}

class _ordermainpageState extends State<ordermainpage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            height: 738.h,
            width: 375.w,
            child: Column(
              children: [
                SizedBox(
                  height: 63.0.h,
                ),
                appbarorder(
                  text: "Upcoming Event",
                  img: "assets/icon/ordericon.png",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: Container(
                    height: 637.h,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(vertical: 0),
                      itemCount: upcomingevent.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Container(
                            width: 327.w,
                            height: 143.h,
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.0.w, vertical: 15.0.h),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      upcomingevent[index].veneu,
                                      style: TextStyle(
                                          color: Color(0xFF0D2B4C),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image(
                                              width: 18.w,
                                              height: 18.w,
                                              image: AssetImage(
                                                "assets/icon/eventcard/Profile.png",
                                              ),
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(upcomingevent[index].name,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp,
                                                    color: Color(0xFF0D2B4C)
                                                        .withOpacity(0.7))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image(
                                              width: 18.w,
                                              height: 18.w,
                                              image: AssetImage(
                                                "assets/icon/eventcard/Call.png",
                                              ),
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                  text: "+91",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12.sp,
                                                      color: Color(0xFF0D2B4C)
                                                          .withOpacity(0.7)),
                                                  children: [
                                                    TextSpan(
                                                        text:
                                                            upcomingevent[index]
                                                                .pnumber
                                                                .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 11.sp,
                                                            color: Color(
                                                                    0xFF0D2B4C)
                                                                .withOpacity(
                                                                    0.7))),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Image(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              width: 18.w,
                                              height: 18.w,
                                              image: AssetImage(
                                                "assets/icon/eventcard/Calendar.png",
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.h),
                                              child: Text.rich(
                                                TextSpan(
                                                    text: DateFormat(
                                                            'dd-MM-yyyy hh:mm a')
                                                        .format(
                                                            upcomingevent[index]
                                                                .startdate),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 9.sp,
                                                        color: Color(0xFF0D2B4C)
                                                            .withOpacity(0.7)),
                                                    children: [
                                                      TextSpan(
                                                          text: " To ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 9.sp,
                                                              color: Color(
                                                                      0xFF0D2B4C)
                                                                  .withOpacity(
                                                                      0.7))),
                                                      TextSpan(
                                                          text: DateFormat(
                                                                  'dd-MM-yyyy hh:mm a')
                                                              .format(
                                                                  upcomingevent[
                                                                          index]
                                                                      .enddate),
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 9.sp,
                                                              color: Color(
                                                                      0xFF0D2B4C)
                                                                  .withOpacity(
                                                                      0.7))),
                                                    ]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image(
                                              width: 18.w,
                                              height: 18.w,
                                              image: AssetImage(
                                                "assets/icon/eventcard/cart.png",
                                              ),
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    DateFormat(
                                                            'dd-MM-yyyy hh:mm a')
                                                        .format(
                                                            upcomingevent[index]
                                                                .bookdate),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 9.sp,
                                                      color: Color(0xFF0D2B4C)
                                                          .withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image(
                                              width: 18.w,
                                              height: 18.w,
                                              image: AssetImage(
                                                "assets/icon/add9.png",
                                              ),
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    upcomingevent[index]
                                                        .address,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 9.sp,
                                                      color: Color(0xFF0D2B4C)
                                                          .withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

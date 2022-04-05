import 'package:flutter/material.dart';
import 'package:venue_user/splash/splasscreen.dart';

void main() {
  runApp(vanueforevent());
}

class vanueforevent extends StatelessWidget {
  const vanueforevent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Questrial',
        // accentColor: Color(0xFFF4F4F4),
      ),
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pawfeed/screens/signin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
         //flutter_screenuitl < 1.2
  ScreenUtil.init();   
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PawFeed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}



//sharon branch exists

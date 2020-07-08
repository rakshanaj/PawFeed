

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/image_01.png'),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset('assets/images/image_02.png')
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo.png',
                        width: ScreenUtil().setWidth(150),
                        height: ScreenUtil().setHeight(150),
                      ),
                      Text(
                        'PawFeed',
                        style: TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontSize: ScreenUtil().setSp(56),
                            letterSpacing: .6,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(380),
                  ),
                  Container(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(650),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0),
                            blurRadius: 15.0,
                          ),
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, -10.0),
                            blurRadius: 10.0,
                          )
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Login',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(65),
                                fontFamily: 'Poppins-Bold',
                                letterSpacing: 0.6),
                          ),
                          SizedBox(
                            height: ScreenUtil().setSp(30),
                          ),
                          Text(
                            'Username',
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: ScreenUtil().setSp(33)),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'username',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(20),),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontSize: ScreenUtil().setSp(33)),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'password',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(35),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                            Text('Forgot Password?',
                            style: TextStyle(
                              color:Colors.blue,
                              fontFamily:'Poppins-Medium',
                              fontSize: ScreenUtil().setSp(28)
                            ),)
                          ],)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

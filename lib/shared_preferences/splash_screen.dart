import 'dart:async';

import 'package:calculatorapp/shared_preferences/home_screen.dart';
import 'package:calculatorapp/shared_preferences/login_screen.dart';
import 'package:calculatorapp/shared_preferences/student_screen.dart';
import 'package:calculatorapp/shared_preferences/teacher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   islogin();
  }
  void islogin() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    bool islogin = sharedPreferences.getBool('islogin')?? false;
    String userType = sharedPreferences.getString('userType')?? '';
    if(islogin){
      if(userType == 'student'){
        Timer(Duration(seconds: 4), () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>StudentScreen()));
        });
      }
      else if(userType == 'teacher'){
        Timer(Duration(seconds: 4), () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>Teacher()));
        });
      }else{
        Timer(Duration(seconds: 4), () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>HomeScreen()));
        });
      }
      }
    else{
      Timer(Duration(seconds: 4), () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>LoginScreen()));
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image.asset(
          height: double.infinity,
            fit: BoxFit.fitHeight,
            'assets/images/fruits.jpg'),
      ),
    );
  }
}

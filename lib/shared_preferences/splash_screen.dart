import 'dart:async';

import 'package:calculatorapp/shared_preferences/home_screen.dart';
import 'package:calculatorapp/shared_preferences/login_screen.dart';
import 'package:flutter/material.dart';

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
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=>LoginScreen()));
    });
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

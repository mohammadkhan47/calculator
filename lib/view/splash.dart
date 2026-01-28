import 'dart:async';

import 'package:calculatorapp/view/travelhomepag.dart';
import 'package:flutter/material.dart';

class Doctorsplash extends StatefulWidget {
  const Doctorsplash({super.key});

  @override
  State<Doctorsplash> createState() => _DoctorsplashState();
}

class _DoctorsplashState extends State<Doctorsplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => TravelHomePage())));
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text('DOCCURE',style: TextStyle(
            color: Colors.white,
            fontSize: 80,
            fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}

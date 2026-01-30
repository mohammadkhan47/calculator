import 'package:calculatorapp/shared_preferences/splash_screen.dart';
import 'package:calculatorapp/view/Drawer.dart';
import 'package:calculatorapp/view/dashboard.dart';
import 'package:calculatorapp/view/splash.dart';
import 'package:calculatorapp/viewmodel/travelviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TravelHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (BuildContext context)=>Travelviewmodel(),
      child: MaterialApp(
        home: DashboardScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

  }
}
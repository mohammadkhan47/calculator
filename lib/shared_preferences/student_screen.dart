import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String email = '' ,
      age = '',
  type = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email')?? '';
    age = sp.getString('age')?? '';
    type = sp.getString('userType')?? '';
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student View'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home screen'),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('email'),
                Text(email.toString())
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('age'),
                Text(age.toString())

              ],
            ),
            SizedBox(height: 40),
            InkWell(
                onTap: () async{
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.clear();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>LoginScreen()));

                  // SharedPreferences sp = await SharedPreferences.getInstance();
                  // sp.setString('name', 'mohammad khan');
                  // sp.setInt('age', 26);
                  // print(sp.get('name'));
                  // sp.remove('name');
                  // print(sp.getString('name'));
                },
                child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                        child: Text('logout',style: TextStyle(color: Colors.white,fontSize: 20),)))


            ),
          ],
        ),
      ),
    );
  }
}

import 'package:calculatorapp/shared_preferences/home_screen.dart';
import 'package:calculatorapp/shared_preferences/student_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('hekko');
    print('hweloo');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: 'email',
                  label: Text('email'),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                  hintText: 'password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: agecontroller,
                decoration: InputDecoration(
                  hintText: 'age',
                  prefixIcon: Icon(Icons.abc),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              SizedBox(height: 10),

                    InkWell(
                      onTap: () async{
                        SharedPreferences sp = await SharedPreferences.getInstance();
                        sp.setString('email', emailcontroller.text.toString());
                        sp.setString('age', agecontroller.text.toString());
                        sp.setString('userType', 'teacher');

                        //admin student teacher
                        sp.setBool('islogin', true);
                        if(sp.getString('userType') == 'teacher'){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
                        }else if(sp.getString('userType') == 'stuent'){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
                        }else{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
                        }

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
                              child: Text('signup',style: TextStyle(color: Colors.white,fontSize: 20),)))


                    ),
            ],
          ),
        ),
      ),
    );
  }
}

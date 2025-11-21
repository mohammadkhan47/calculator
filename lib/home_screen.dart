import 'package:flutter/material.dart';

import 'components/mybutton.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child : Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
              children: [
              Row(
              children: [
              MyButton(title: 'AC',onpress: (){print('tap');},),
            MyButton(title: '+/-',onpress: (){print('tap');}),
            MyButton(title: '%',onpress: (){print('tap');}),
            MyButton(title: '/',color: Color(0xffffa00a),onpress: (){print('tap');}),
            ],
                    ),
                    Row(
            children: [
              MyButton(title: '7',onpress: (){print('tap');}),
              MyButton(title: '8',onpress: (){print('tap');}),
              MyButton(title: '0',onpress: (){print('tap');}),
              MyButton(title: 'x',color: Color(0xffffa00a),onpress: (){print('tap');}),
            ],
                    ),
                    Row(
            children: [
              MyButton(title: '4',onpress: (){print('tap');}),
              MyButton(title: '5',onpress: (){print('tap');}),
              MyButton(title: '6',onpress: (){print('tap');}),
              MyButton(title: '-',color: Color(0xffffa00a),onpress: (){print('tap');}),
            ],
                    ),
                    Row(
            children: [
              MyButton(title: '1',onpress: (){print('tap');}),
              MyButton(title: '2',onpress: (){print('tap');}),
              MyButton(title: '3',onpress: (){print('tap');}),
              MyButton(title: '+',color: Color(0xffffa00a),onpress: (){print('tap');}),
            ],
                    ),
                    Row(
            children: [
              MyButton(title: '0',onpress: (){print('tap');}),
              MyButton(title: 'DEL',onpress: (){print('tap');}),
              MyButton(title: '-',onpress: (){print('tap');}),
              MyButton(title: '=',color: Color(0xffffa00a),onpress: (){print('tap');}),
            ],
                    ),
                ],
                )
            ),
                    ]),
          ),
              ),
    )
    );
  }
}



import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(userInput+(answer.isNotEmpty ? ' = $answer' : ''),
                                style: TextStyle(
                                  fontSize: 30, color: Colors.white),),
                            ),
                          ),
                          // SizedBox(height: 10,),
                          // Text(answer, style: TextStyle(fontSize: 40,color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                MyButton(title: 'AC', onpress: () {
                                  userInput = '';
                                  answer = '';
                                  setState(() {});
                                },),
                                MyButton(title: '+/-', onpress: () {
                                  userInput += '+/-';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '%', onpress: () {
                                  userInput += '%';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '/',
                                    color: Color(0xffffa00a),
                                    onpress: () {
                                      userInput += '/';
                                      setState(() {});
                                    }),
                              ],),
                            Row(
                              children: [
                                MyButton(title: '7', onpress: () {
                                  userInput += '7';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '8', onpress: () {
                                  userInput += '8';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '0', onpress: () {
                                  userInput += '0';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '*',
                                    color: Color(0xffffa00a),
                                    onpress: () {
                                      userInput += '*';
                                      setState(() {

                                      });
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '4', onpress: () {
                                  userInput += '4';
                                  setState(() {});
                                }),
                                MyButton(title: '5', onpress: () {
                                  userInput += '5';
                                  setState(() {});
                                }),
                                MyButton(title: '6', onpress: () {
                                  userInput += '6';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '-',
                                    color: Color(0xffffa00a),
                                    onpress: () {
                                      userInput += '-';
                                      setState(() {

                                      });
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '1', onpress: () {
                                  userInput += '1';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '2', onpress: () {
                                  userInput += '2';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '3', onpress: () {
                                  userInput += '3';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '+',
                                    color: Color(0xffffa00a),
                                    onpress: () {
                                      userInput += '+';
                                      setState(() {

                                      });
                                    }),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '0', onpress: () {
                                  userInput += '0';
                                  setState(() {

                                  });
                                }),
                                MyButton(title: 'DEL', onpress: () {
                                  userInput = userInput.substring(0,userInput.length-1);
                                  setState(() {

                                  });
                                }),
                                MyButton(title: '.', onpress: () {
                                  userInput += '.';
                                  setState(() {});
                                }),
                                MyButton(
                                  title: '=',
                                  color: Color(0xffffa00a),
                                  onpress: () {
                                    try {
                                      equalPress(); // Evaluate the expression
                                    } catch (e) {
                                      answer = 'Error';
                                    }
                                    setState(() {});
                                  },
                                ),
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

  void equalPress() {
    Parser p = Parser();
    try {
      Expression expression = p.parse(userInput); // do NOT add '=' here
      ContextModel cm = ContextModel();
      double eval = expression.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    } catch (e) {
      answer = 'Error';
    }
  }

}

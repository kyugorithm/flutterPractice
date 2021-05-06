// main.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dice_app/dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Game',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Log in'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.search)],
        ),
        body: GestureDetector(
          // Focus tree/node/scope
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                    child: Theme(
                        data: ThemeData(
                            primaryColor: Colors.grey[700],
                            inputDecorationTheme: InputDecorationTheme(
                                labelStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 17,
                            ))),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 50)),
                              Image(
                                image: AssetImage('assets/main2.gif'),
                                height: 250,
                              ),
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey[200],
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                controller: controller,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[700], width: 0.5),
                                    ),
                                    hintText: 'Enter dice',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                    )),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(height: 10),
                              TextField(
                                controller: controller2,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey[700]),
                                    ),
                                    hintText: 'Enter Password',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[500])),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Forgot your password?',
                                      style: TextStyle(color: Colors.grey[300])),
                                  Container(),
                                  Text('Sign in',
                                      style: TextStyle(color: Colors.grey[300]))
                                ],
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                style: ButtonStyle(),
                                child: Icon(Icons.arrow_forward_ios_sharp),
                                onPressed: () {
                                  if (controller.text == 'dice' && controller2.text == '1234') {Navigator.push(context,MaterialPageRoute(builder: (context) => Dice()));}
                                  else if (controller.text == 'dice' && controller2.text != '1234') {showSnackBar2(context);}
                                  else if (controller.text != 'dice' && controller2.text == '1234') {showSnackBar3(context);}
                                  else {showSnackBar(context);}
                                },
                              ),
                            ],
                          ),
                        )))
              ],
            ),
          ),
        ));
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      '로그인 정보를 다시 확인하세요',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      'Password does not match',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      'Check the spelling of "dice".',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}



// dice.dart
import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast/toast.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  int sumDice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                // mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset('assets/dice$leftDice.png')),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(child: Image.asset('assets/dice$rightDice.png')),
                ],
              ),
            ),
            SizedBox(height: 40),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 70, height: 40),
              child: ElevatedButton(
                style: ButtonStyle(),
                child: Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () { 
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                    sumDice = leftDice + rightDice;
                  });
                  Toast.show('Sum of values $sumDice ', context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

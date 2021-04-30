

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MyStateful(),
    );
  }
}

class MyStateful extends StatefulWidget {
  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int _count = 0;
  int _color = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter', style: TextStyle(fontFamily: 'DoHyeon-Regular',fontSize: 30)),
        backgroundColor: Colors.grey
      ),
      body: ListView(
        children: [
          Center(
            child: Text('\n\n\n\n\n\n\n\n\n\n\n'
                'You have pressed many times.', style: TextStyle(fontFamily: 'DoHyeon-Regular',fontSize: 15,color: Colors.grey[800])),
          ),

          Center(
            child: Text('$_count', style: TextStyle(fontFamily: 'DoHyeon-Regular',fontSize: 70,color: Colors.grey[800])),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height:50
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> setState((){
          _count++;
          _color+=100;
          if(_count>10)
            _count = 0;
          _color = 0;
        }),
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[_color],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

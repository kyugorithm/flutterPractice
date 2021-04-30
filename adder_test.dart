// 본 코드는 https://dalgonakit.tistory.com/103을 참조
// 기본 내용에서 다양한 옵션을 조절해 보았다.

// 1) AppBar
// 화면 윗부분에 해당
// Android : TitleBar, iOS :  NavigationBar 로 불리운다고 한다.

// 2) Body
// 가운데 화면  Text Widget을 추가

// 3) BottomNavigationBar
// 하단영역 창을 이동할 수 있는 버튼을 추가할 수 있는 영역
// Android:  Bottom Navigation Bar, iOS : Tab Bar
// 50 픽셀 만큼 띄운 공간으로 세팅

// 4) FloatingActionButton
// 창 위에 떠 있는 효과를 주는 버튼
// Android:  support library FloatingActionButton을 지원
// iOS : 직접 버튼을 배치해서 사용

// 5) FloatingActionButtonLocation
// 4번의 FloatingActionButton의 위치를 설정 



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
          if(_count>10)
            _count = 0;
        }),
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


// Scaffold 클래스는 기본 Material Design visual layout 구조를 구현하는 데 사용되며 기본적으로 범용 모바일 앱을 구성하기에 충분하며 일반적인 앱구성의 기본 프레임으로 사용하기에 편리하다.

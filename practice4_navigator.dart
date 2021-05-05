// 페이지 이동시 필요한 기능 : Navigator 
// 추가 공부 필요 : Route는 화면으로 이해하면 되는데 Material Page의 화면을 현재 context 위에 overay하는것임
// 여기에서 builder를 이용하여 mapping 함
// 추가ㅣ로 깔려있는 화면을 날리려면 pop을 통해 해당 context를 입력arg로 넣어주면 된다.
//  : Material App에서 initial Route 와 mapping을 위한 route들을 설정해주면 Navigator.pushNamed를 이용하여 쉽게 이동할 수 있다.
// 아래 기능 기억

// Navigator.push(context, MaterialPageRoute(builder: (context)=>(SecondPage())));
// Navigator.pop(context);
// FlatButton은 2.0에서 deprecated 되었기 때문에 ElevatedButton 이용
// Navigator.push의 2개의 매개변수는 context와 route이다. 여기에서 route는 내가 어떤 경로로 갈것인지를 넣으면 되기때문에 일반적으로 해당 정의 class를 넣으면 될것이라고 생각할 수 있지만
// // MaterialPageRoute를 이용해야한다. 아래 설명과 같은 기능을 제공한다.
// MaterialPageRoute는 flutter가 기본으로 제공하는 기능으로 builder를 제공하며 라우팅을 하는 과정에서 안전장치로 사용합니다.
// MaterialPageRoute는 앱상에서 페이지 이동을 할 때 기본 애니메이션이 제공됩니다.
// android : 페이지 들어갈 때 fade in, 페이지 나갈 때 fade out
// ios : 좌우로 움직이면서 페이지 이동

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Second App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the second page'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>(SecondPage())));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the second page'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

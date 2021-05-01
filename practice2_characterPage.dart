// 참조 : 유튜브채널(코딩셰프) = https://www.youtube.com/watch?v=AdYRASHRKwE&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl
// Material의 컴포넌트 (https://material.io/components?platform=flutter)
// 1. AppBar : 현재 화면에 관련된 내용이나 액션들을 제공한다. 브랜딩, 스크린타이틀, 네비게이션과 액션을 위해 사용된다.
// 2. Divider : 리스트와 레이아웃으로 내용물을 그룹화하는 얇은 선 : 내용물을 명확한 그룹으로 분리할 수 있다.
// - 원칙 : 확인 가능하도록 해야하나 너무 눈에 띄진않아야함 / 여백으로 분리할 수 없을 경우에만 사용 / 너무 빈번하게 사용되지 않아야함
// - 종류 : Full-bleed dividers : 선을 끝에서 끝까지 이어서 분리 / Inset dividers : 원하는 영역만 분리 / middle dividers : 양끝부분 여백 / Dividers with subheaders : subheader를 나누기 사용
// +@ SizedBox : 상하좌우 위젯간 여백 / 
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My first app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Center(
            child: Text('YAEJIN'),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              widthFactor: 2.9,
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/character3.gif'),
                radius: 60.0,
                backgroundColor: Colors.amber[800],
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('Name',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(height: 10.0),
            Text('YAEJIN',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text('POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text('14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text('using lightsaver',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.0,
                ),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text('face hero tatoo',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.0,
                  ),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text('fire flames',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.0,
                  ),)
              ],
            ),
            SizedBox(height: 20.0),
            Center(
              widthFactor: 4.35,
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/character2.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}

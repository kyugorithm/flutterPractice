// Drawer를 이용할 수 있다.
// Drawer는 AppBar 좌측단에 메뉴버튼을 누르면 action이 발생함과 동시에 좌측에 메뉴 화면이 생기도록 한다
// UserAccountsDrawerHeader를 이용하여 개인 계정관련된정보
// 예를들어 아이디, 메일주소, 계정의 사진, 타계정사진등의 정보를 관리할 수 있도록 한다.
// UserAccountsDrawerHeader에는 decoration arg가 있는데 이를 이용하여 해당영역의 디자인을 조절할 수 있다.
// ListTile을 이용하여 메뉴에 각각의 element를 만들 수 있다. ListTile에서는 좌측과 우측의 widget을 추가할 때 leading과 training을 사용한다.
// 아! 그리고 안드로이드 스튜디오에서는 ctrl + alt + L 을 이용하여 코드의 indentation을 자동으로 조절 할 수 있다.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'My Second App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Wedding Memory',
          style: TextStyle(
              fontSize: 18
          ),),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('shopping_cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping_cart button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
              CircleAvatar(
                backgroundImage: AssetImage('asset/character4.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/character5.png'),
                  backgroundColor: Colors.red[150],
                )
              ],
              accountName: Text('Yaejin Lee'),
              accountEmail: Text('hilary90@naver.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ) ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],),
              title: Text('Home'),
              onTap: (){
                print('Tapped Home');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],),
              title: Text('Settings'),
              onTap: (){
                print('Tapped Settings');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],),
              title: Text('Q&A'),
              onTap: (){
                print('Tapped Q&A');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

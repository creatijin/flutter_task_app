import 'package:flutter/material.dart';
import 'package:flutter_router_task/ScreenA.dart';
import 'package:flutter_router_task/ScreenB.dart';
import 'package:flutter_router_task/ScreenC.dart';
import 'package:flutter_router_task/ScreenD.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      //home라우트랑 동시에 하면 에러가 발생
      routes: {
        "/": (context)=> MyHomePage(title: 'Studio GrotesQ Home'),
        "/a": (context) => ScreenA(),
        "/b": (context) => ScreenB(),
        "/c": (context) => ScreenC(),
        "/d": (context) => ScreenD(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image.asset('asset/images/Studio_GrotesQ_Logo.png')
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '아이디',              
              )
            ),
            SizedBox(
              height: 10
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '비밀번호',
              )
            ),
            SizedBox(
              height: 30
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, "/a")
                  },
                  child: Text('로그인'),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, "/b")
                  },
                  child: Text('회원가입'),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('이용약관')),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('이용약관'),
            SizedBox(height: 30.0),
            TextField(
              maxLines: 5,
              decoration: InputDecoration.collapsed(
                  hintText:
                      "제1장 총칙 제1조(목적) 이 약관은 회사가 온라인으로 제공하는 디지털콘텐츠(이하 콘텐츠라고 한다) 및 제반서비스의 이용과 관련하여 회사와 이용자와의 권리, 의무 및 책임사항 등을 규정함을 목적으로 합니다."),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('뒤로가기'))
          ])),
    );
  }
}

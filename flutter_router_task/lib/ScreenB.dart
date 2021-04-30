import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('회원가입 페이지')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/', (Route<dynamic> route) => false);
                  },
                  child: Text('회원가입')
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () => {
                    // Navigator.of(context).pushNamedAndRemoveUntil('/c', (Route<dynamic> route) => false)
                    Navigator.pushNamed(context, '/c')
                  },
                  child: Text('이용약관'),
                )
              ]
            ),
        ])
      ),
    );
  }
}

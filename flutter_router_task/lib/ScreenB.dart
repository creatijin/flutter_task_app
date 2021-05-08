import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('회원가입 페이지')),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage('asset/images/choonsik_1.png'),
                  width: 250,
                  height: 250,
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: '아이디'
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: '비밀번호'
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: '비밀번호 확인'
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: '이름'
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: '생일'
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: '주소'
                      ),
                      keyboardType: TextInputType.text,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/', (route) => false);
                      },
                      child: Text('회원가입')),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.pushNamed(context, '/c')
                    },
                    child: Text('이용약관'),
                  )
                ]
              ),
          ]
        ),
      ),
    );
  }
}

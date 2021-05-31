import 'package:basic_app/view/CommonAppBar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar('LOGIN PAGE', 'login'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'e-mail',
                  hintText: '이메일을 입력하세요',
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호',
                  hintText: '비밀번호를 입력하세요',
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("LOGIN"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.cyan,
                  ),
                  onPressed: () => _loginCheck(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginCheck(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            //title: Text(""),
            content: SingleChildScrollView(child: Text("준비중")),
            actions: <Widget>[
              TextButton(
                child: Text("닫기"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}

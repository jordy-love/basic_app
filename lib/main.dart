import 'package:basic_app/view/CommonAppBar.dart';
import 'package:basic_app/view/Login.dart';
import 'package:flutter/material.dart';

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
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar('MAIN PAGE', 'main'),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

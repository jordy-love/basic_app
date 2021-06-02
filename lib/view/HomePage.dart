import 'package:basic_app/view/CommonAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
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
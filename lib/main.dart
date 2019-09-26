import 'package:flutter/material.dart';
import './container/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '掌上高考',
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          platform: TargetPlatform.iOS
        ),
        home: Scaffold(
          body:Index()
        ),
      ),
    );
  }
}

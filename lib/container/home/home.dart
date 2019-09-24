import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          centerTitle: true,
        ),
        body: Text('home'),
      )
    );
  }
}

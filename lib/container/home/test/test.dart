import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ScreenUtil.instance = ScreenUtil(width: 375, height: 667)..init(context);

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('测试'),
        ),
        body: Container(
          height: 300,
          width: ScreenUtil.getInstance().setWidth(375),
          color: Colors.red,
          child: Stack(
            children: <Widget>[
              Container(
                child: Text('2'),
              ),
              Positioned(
                child: Text('你好'),
              )
            ],
          )
        )
      ),
    );
  }
}
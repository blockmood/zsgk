import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './home/home.dart';
import './news/news.dart';
import './message/message.dart';
import './person/person.dart';

class Index extends StatefulWidget {
  Index({Key key}) : super(key: key);

  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  //初始化底部导航列表

  final List<BottomNavigationBarItem> bottomBar = [
    BottomNavigationBarItem(Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(Icon(CupertinoIcons.home), title: Text('咨询')),
    BottomNavigationBarItem(Icon(CupertinoIcons.home), title: Text('消息')),
    BottomNavigationBarItem(Icon(CupertinoIcons.home), title: Text('个人中心'))
  ];

  //组件列表
  final List<Widget> tabList = [Home(), News(), Message(), Person()];

  int currentIndex = 0;
  var currentPage;

  //初始化参数
  @override
  void initState() {
    currentPage = tabList[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('index'),
    );
  }
}

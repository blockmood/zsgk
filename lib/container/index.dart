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
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home), 
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.search), 
      title: Text('资讯')
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.check_mark), 
      title: Text('消息')
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.person), 
      title: Text('个人中心')
    )
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
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: bottomBar,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              currentPage = tabList[index];
            });
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: tabList,
        ));
  }
}

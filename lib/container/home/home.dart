import 'package:flutter/material.dart';
import './TopNavigator/TopNavigator.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //初始化数据
  List navData = [
      {
        'img':'https://g.eol.cn/static/media/major.008819a9.svg',
        'text':'专业解读'
      },
      {
          'img':'https://g.eol.cn/static/media/newgk.a8700766.svg',
        'text':'新高考选科'
      },
      {
          'img':'https://g.eol.cn/static/media/fen2.6f44ea61.svg',
        'text':'招生计划'
      },
      {
          'img':'https://static-gkcx.eol.cn//upload/operate_img/gkcx_1552471357_3413_thumb.png',
        'text':'省控线查询'
      },
      {
          'img':'https://g.eol.cn/static/media/college2.2d3b57e0.svg',
        'text':'查大学'
      },
      {
        'img':'https://static-gkcx.eol.cn//upload/operate_img/gkcx_1552471357_3413_thumb.png',
        'text':'估分选大学'
      },
      {
          'img':'https://static-gkcx.eol.cn//upload/operate_img/gkcx_1552471357_3413_thumb.png',
        'text':'专业解读'
      },
      {
          'img':'https://g.eol.cn/static/media/shengx.2ca33eb5.svg',
        'text':'政策资讯'
      }
  ];

  @override
  void initState() { 
    super.initState();
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          centerTitle: true,
        ),
        body:Container(
          child: Row(
            children: <Widget>[
              TopNavigator(navData:navData)
            ],
          ),
        )
      )
    );
  }
}



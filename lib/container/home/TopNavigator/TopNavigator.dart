import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../searchSchool/gzx_dropdown_menu_test_page.dart';
import '../test/test.dart';

class TopNavigator extends StatelessWidget {
  final List navData;
  const TopNavigator({Key key,this.navData}) : super(key: key);
  
  Widget _gridViewItem(BuildContext context,item){
    return InkWell(
      onTap: (){
        switch(item['text']){
          case '查大学':{
            Navigator.push(context, 
              new MaterialPageRoute(builder: (context)=> GZXDropDownMenuTestPage() )
            );
            break;
          }
          case '专业解读':{
            Navigator.push(context, 
              new MaterialPageRoute(builder: (context)=> Test() )
            );
          }
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          item['img'].indexOf('svg') != -1 ? 
          SvgPicture.network(item['img'],width: ScreenUtil.getInstance().setWidth(40),)
          : Image.network(item['img'],width: ScreenUtil.getInstance().setWidth(40),)
          ,
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(item['text']),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //初始化插件
    ScreenUtil.instance = ScreenUtil(width: 375, height: 667)..init(context);

    return Flexible(
      child: SingleChildScrollView(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              height: ScreenUtil.getInstance().setHeight(170),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                padding: const EdgeInsets.all(15.0),
                children: navData.map((item){
                  return _gridViewItem(context,item);
                }).toList(),
              ),
            ),
          )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../searchSchool/gzx_dropdown_menu_test_page.dart';

class TopNavigator extends StatelessWidget {
  final List navData;
  const TopNavigator({Key key,this.navData}) : super(key: key);
  
  Widget _gridViewItem(BuildContext context,item){
    return InkWell(
      onTap: (){
        if(item['text'] == '查大学'){
          //跳转
          Navigator.push(context, 
            new MaterialPageRoute(builder: (context)=> GZXDropDownMenuTestPage() )
          );
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.network(item['img'],width: ScreenUtil.getInstance().setWidth(120),),
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
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Flexible(
      child: SingleChildScrollView(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              height: ScreenUtil.getInstance().setHeight(500),
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
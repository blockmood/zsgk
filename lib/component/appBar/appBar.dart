import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class appBar extends StatefulWidget {
  final title;
  appBar({Key key,this.title}) : super(key: key);

  _appBarState createState() => _appBarState();
}

class _appBarState extends State<appBar> {

  Widget _go(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        width: ScreenUtil.getInstance().setWidth(40),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Icon(
          Icons.keyboard_arrow_left,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.instance = ScreenUtil(width: 375, height: 667)..init(context);

    return Container(
       width: MediaQuery.of(context).size.width,
          height: 57,
          color: Theme.of(context).primaryColor,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            children: <Widget>[
              _go(context),
              Container(
                width: ScreenUtil.getInstance().setWidth(295),
                child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                ),
              )
            ],
          )
    );
  }
}
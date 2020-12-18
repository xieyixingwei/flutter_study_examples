import 'package:flutter/material.dart';
/*
import 'package:helloworld/MyContainer.dart';
import 'package:helloworld/MyText.dart';
import 'package:helloworld/MyImage.dart';
import 'package:helloworld/MyListView.dart';
import 'package:helloworld/MyGridView.dart';
import 'package:helloworld/MyLayoutComponent.dart';
import 'package:helloworld/MyStack.dart';
import 'package:helloworld/MyAspectRatio.dart';
import 'package:helloworld/MyCard.dart';
import 'package:helloworld/MyStatefulWidget.dart';
*/
import '../routes/pages/SearchPage.dart';
import 'package:helloworld/routes/pages/FormPage.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      //child: MyStatefulWidgetB(),
      child: Column(
        children: [
          RaisedButton(
            child: Text("跳转到SearchPage"),
            onPressed: () {
              // 基础路由跳转
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                )
              );
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 10,),
          RaisedButton(
           child: Text("跳转到表单页面并传值"),
           onPressed: () {
             Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (context) {
                   return FormPage(title: "ID123");
                 },
               )
             );
           },
           color: Theme.of(context).accentColor,
         ),
         SizedBox(height: 10,),
        RaisedButton(
          child: Text("跳转到日期时间组件演示"),
          onPressed: () {
            Navigator.pushNamed(context, "/datetimepage");
          },
          color: Theme.of(context).accentColor,
        ),
        SizedBox(height: 10,),
        RaisedButton(
          child: Text("跳转到Dialog组件演示"),
          onPressed: () {
            Navigator.pushNamed(context, "/dialogpage");
          },
          color: Theme.of(context).accentColor,
        ),
        SizedBox(height: 10,),
        RaisedButton(
          child: Text("DIO实现网络请求演示"),
          onPressed: () {
            Navigator.pushNamed(context, "/diopage");
          },
          color: Theme.of(context).accentColor,
        ),
        ],
      ),
    );
  }
}

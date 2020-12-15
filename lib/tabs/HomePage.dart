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
import '../routes/SearchPage.dart';
import 'package:helloworld/routes/FormPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: Text("登录"),
            onPressed: () {
              // 基础路由跳转
              Navigator.pushNamed(context, "/login");
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("使用DefaultTabController和Scaffold实现顶部tab页面切换"),
            onPressed: () {
              // 基础路由跳转
              Navigator.pushNamed(context, "/appbarpage");
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("使用TabController和Scaffold实现顶部tab页面切换"),
            onPressed: () {
              // 基础路由跳转
              Navigator.pushNamed(context, "/tabbarpage");
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("按钮组件演示"),
            onPressed: () {
              // 基础路由跳转
              Navigator.pushNamed(context, "/buttonpage");
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

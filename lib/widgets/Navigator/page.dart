import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';
import './ChildPage.dart';


class NavigatorPage extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "Navigator 跳转路由";
  final String subtitle = "响应触摸事件并将用户路由到不同的页面视图（View）";

  NavigatorPage({Key key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}


class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          ListTile(
            title: Text("基础路由跳转"),
            onTap: (){
                // 基础路由跳转
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChildPageA(),
                  )
                );
            },
          ),
          ListTile(
              title: Text("基础路由跳转并传值"),
              onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ChildPageB(param: "I am a param"); //FormPage(title: "ID123");
                      },
                    )
                  );
              },
          ),
          ListTile(
            title: Text("命名路由跳转"),
            onTap: (){
                // 命名路由跳转
                Navigator.pushNamed(context, "/childc");
            },
          ),
          ListTile(
            title: Text("命名路由跳转并传值"),
            onTap: (){
                // 命名路由跳转并传值
                Navigator.pushNamed(context, "/childd", arguments:"hello world");
            },
          ),
        ],
    );
  }
}

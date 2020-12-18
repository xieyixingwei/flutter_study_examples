import 'package:flutter/material.dart';

import '../routes/pages/SearchPage.dart';
import 'package:helloworld/routes/pages/FormPage.dart';


class ExampleTab extends StatefulWidget {
  ExampleTab({Key key}) : super(key: key);

  @override
  _ExampleTabState createState() => _ExampleTabState();
}

class _ExampleTabState extends State<ExampleTab> {
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
                    builder: (context) => SearchPage(),
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
                        return FormPage(title: "ID123");
                      },
                    )
                  );
              },
          ),
          ListTile(
            title: Text("命名路由跳转"),
            onTap: (){
                // 命名路由跳转
                Navigator.pushNamed(context, "/login");
            },
          ),
          ListTile(
            title: Text("使用DefaultTabController和Scaffold实现顶部tab页面切换"),
            onTap: (){
                Navigator.pushNamed(context, "/appbarpage");
            },
          ),
          ListTile(
            title: Text("使用TabController和Scaffold实现顶部tab页面切换"),
            onTap: (){
                Navigator.pushNamed(context, "/tabbarpage");
            },
          ),
          ListTile(
            title: Text("Button组件演示"),
            onTap: (){
                Navigator.pushNamed(context, "/buttonpage");
            },
          ),
        ],
    );
  }
}

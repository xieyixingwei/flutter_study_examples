import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  AppBarPage({Key key}) : super(key: key);

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold要放置在DefaultTabController内部
    return DefaultTabController(
      length: 2,
      child: Scaffold(
              appBar: AppBar(
                title: Text("AppBar Tab"),
                centerTitle: true,
                backgroundColor: Colors.green,
                
                //leading: IconButton(
                //  icon: Icon(Icons.menu),
                //  onPressed: () {
                //   print("menu");
                //  },
                //),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      print("search");
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.apps),
                    onPressed: () {
                      print("apps");
                    },
                  ),
                ],
                bottom: TabBar(
                  tabs: [
                    Text("热门"),
                    Text("推荐")
                  ],
                ),
              ), 
              body: TabBarView(
                children: [
                  ListView(
                    children: [
                      ListTile(
                        title: Text("第一个Tab"),
                      ),
                      ListTile(
                        title: Text("第一个Tab"),
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      ListTile(
                        title: Text("第二个Tab"),
                      ),
                      ListTile(
                        title: Text("第二个Tab"),
                      )
                    ],
                  )
                ],
              ),
            ),
    );
  }
}

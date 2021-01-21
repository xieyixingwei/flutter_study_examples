import 'package:flutter/material.dart';


class AppBarExampleA extends StatefulWidget {
  AppBarExampleA({Key key}) : super(key: key);

  @override
  _AppBarExampleA createState() => _AppBarExampleA();
}

class _AppBarExampleA extends State<AppBarExampleA> {
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

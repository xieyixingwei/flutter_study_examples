import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class AppBarExampleA extends ShowPage {
  @override
  final String title = "TabBar DefaultTabController";
  @override
  final String subtitle = "Scaffold要放置在DefaultTabController内部";

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

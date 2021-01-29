import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';

// 使用TabController实现TabBar必须继承于StatefulWidget

class TabBarExampleA extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "TabBar TabBarView TabController";
  final String subtitle = "必须在StatefulWidget中使用TabController";

  TabBarExampleA({Key key}) : super(key: key);

  @override
  _TabBarExampleA createState() => _TabBarExampleA();
}

class _TabBarExampleA extends State<TabBarExampleA> 
  with SingleTickerProviderStateMixin {

  TabController _tabCtrl;

  // 创建的生命周期函数
  @override
  void initState() {
    super.initState();

    // 新建TabController对象
    this._tabCtrl = TabController(
      vsync: this,
      length: 2);

    // 使用TabController实现TabBar的好处是可以监听TabBar的事件
    this._tabCtrl.addListener(() {
      print(this._tabCtrl.index);
    });
  }

  // 销毁的生命周期函数
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    // 销毁TabController对象
    this._tabCtrl.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
              appBar: AppBar(
                title: Text("TabBar page"),
                bottom: TabBar(
                  controller: this._tabCtrl,
                  tabs: [
                    Tab(text:"热门"),
                    Tab(text:"推荐")
                  ],
                ),
              ), 
              body: TabBarView(
                controller: this._tabCtrl,
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
            );
  }
}


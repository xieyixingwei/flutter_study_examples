import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class DefaultTabControllerExampleA extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "TabBar TabBarView DefaultTabController";
  final String subtitle = "Scaffold要放置在DefaultTabController内部";

  DefaultTabControllerExampleA({Key key}) : super(key: key);

  @override
  _DefaultTabControllerStateExampleA createState() => _DefaultTabControllerStateExampleA();
}

class _DefaultTabControllerStateExampleA extends State<DefaultTabControllerExampleA> {

  @override
  Widget build(BuildContext context) {
    // Scaffold要放置在DefaultTabController内部
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: "热销",),
                    Tab(text: "推荐",),
                    Tab(text: "收藏",),
                    Tab(text: "衣服",),
                    Tab(text: "裤子",),
                    Tab(text: "电器",),
                    Tab(text: "羽绒服",),
                    Tab(text: "皮鞋",),
                    Tab(text: "凉鞋",),
                    Tab(text: "高跟鞋",),
                    Tab(text: "帽子",),
                  ],
                ),
              )
            ],
          )
        ),
        body: TabBarView(
          children: [
            Text("热销产品"),
            Text("推荐产品"),
            Text("收藏产品"),
            Text("衣服产品"),
            Text("裤子产品"),
            Text("电器产品"),
            Text("羽绒服产品",),
            Text("皮鞋产品",),
            Text("凉鞋产品",),
            Text("高跟鞋产品",),
            Text("帽子产品",),
          ],
        ),
      ),
    );
  }
}

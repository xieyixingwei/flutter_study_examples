import 'package:flutter/material.dart';
import 'package:helloworld/common/OnOffWidget.dart';
import 'package:helloworld/components/ShowPage.dart';


Widget onOffWidgetExampleA(){
  return Column(
    children: [
      Text("OnOffWidgetExampleA"),
      OnOffWidget(
        hide: false,
        child: Container(
          child: Column(
            children: [
              Text("package:helloworld/components/AAAAAAAAAAAA.dart"),
              Text("package:helloworld/components/BBBBBBBBBBBBBBBBBBBBBB.dart"),
            ]
          ),
        ),
      ),
      Text("package:helloworld/components/CCCCCCCCCCCCCCCCCCCC.dart"),
      Text("package:helloworld/components/DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD.dart"),
    ],
  );
  
}

class OnOffWidgetExampleA extends ShowPage{
  final String title = "OnOffWidget";
  final String  subtitle = "可以点击隐藏的组件";

  @override
  Widget build(BuildContext context) {
    return onOffWidgetExampleA();
  }
}


class CommonExamplePage extends ShowPage {
  final String title = "自己封装的组件";
  final List<ShowPage> items = [
    OnOffWidgetExampleA(),
  ];
}

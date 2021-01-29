import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class StackExampleA extends ShowPage {
  final String title = "Stack的基本使用";

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.5, 0.5),
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Icon(Icons.home, color: Colors.blue,),
        Text("我是一个文本"),
      ],
    );
  }
}


class StackExampleB extends ShowPage {
  final String title = "使用Align组件控制Stack中的子组件的位置";

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 400,
          width: 300,
          color: Colors.redAccent,
          child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-0.5, 0.2),
                    child: Icon(Icons.home, size: 100.0, color: Colors.blue,),
                  ),
                  Align(
                    alignment: Alignment(-0.8, -0.7),
                    child: Icon(Icons.pages, size: 80.0, color: Colors.yellow,),
                  ),
                  Align(
                    alignment: Alignment(0.5, 0.6),
                    child: Text("我是一个文"),
                  ),
                ],
              ),
    );
  }
}


class StackExampleC extends ShowPage {
  final String title = "使用Positioned组件控制Stack中的子组件的位置";
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 400,
          width: 300,
          color: Colors.redAccent,
          child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    top: 30,
                    child: Icon(Icons.home, size: 100.0, color: Colors.blue,),
                  ),
                  Positioned(
                    right: 20,
                    top: 40,
                    child: Icon(Icons.pages, size: 80.0, color: Colors.yellow,),
                  ),
                  Positioned(
                    top: 220,
                    child: Text("我是一个文"),
                  ),
                ],
              ),
    );
  }
}

class StackExamples extends ShowPage {
  final String title = "Stack";
  final String subtitle = "层叠容器组件";
  final List<ShowPage> items = [
    StackExampleA(),
    StackExampleB(),
    StackExampleC(),
  ];
}

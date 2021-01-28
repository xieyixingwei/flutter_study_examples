import 'dart:math';

import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';

/// 列表组件 ListView 和 ListTile的使用
/// ListView中不能再嵌套 ListView
class ListViewExampleA extends ShowPage {
  final String title = "ListView 和 ListTile的基本使用";
  final String subtitle = "ListView中不能再嵌套 ListView";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings, color: Colors.red, size: 30,),
          title: Text("ListView组件的使用"),
          subtitle: Text("ListView中可以放置任何的widget，例如Text、Container等，但一般放置的是ListTile组件"),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.yellow,),
          title: Text("ListTile组件的使用"),
          subtitle: Text("ListTile组件一般放置于ListView中，作为其子组件"),
        ),
        ListTile(
          title: Text("ListTile组件的使用"),
          subtitle: Text("ListTile组件一般放置于ListView中，作为其子组件"),
          trailing: Icon(Icons.search, color: Colors.red, size: 80,),
        ),
        ListTile(
          leading: Image.asset("images/a.jpg"),
          title: Text("ListView组件的使用"),
          subtitle: Text("ListView中可以放置任何的widget，例如Text、Container等，但一般放置的是ListTile组件"),
        ),
        ListTile(
          leading: Image.asset("images/2.0x/a.jpg"),
          title: Text("ListView组件的使用"),
          subtitle: Text("ListView中可以放置任何的widget，例如Text、Container等，但一般放置的是ListTile组件"),
        ),
        ListTile(
          leading: Image.asset("images/3.0x/a.jpg"),
          title: Text("ListView组件的使用"),
          subtitle: Text("ListView中可以放置任何的widget，例如Text、Container等，但一般放置的是ListTile组件"),
        ),
      ]
    );
  }
}

/// 水平列表
class ListViewExampleB extends ShowPage {
  final String title = "ListView 水平列表";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(1),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Image.asset("images/a.jpg"),
        Image.asset("images/2.0x/a.jpg"),
        Image.asset("images/3.0x/a.jpg"),
      ]
    );
  }
}

/// 动态列表实现方式1
class ListViewExampleC extends ShowPage {
  final String title = "动态列表实现方式1";

  final List _listData = [
    {
      "title": "Candy Shop",
      "image": "images/a.jpg",
    },
    {
      "title": "Childhood in a picture",
      "image": "images/2.0x/a.jpg",
    },
    {
      "title": "Alibaba Shop",
      "image": "images/3.0x/a.jpg",
    },
  ];

  List<Widget> _getData() {
    var data = this._listData.map((e) {
      return ListTile(
        title: Text(e["title"]),
        leading: Image.asset(e["image"]),
      );
      }
    );
    return data.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}

/// 动态列表实现方式2
class ListViewExampleD extends ShowPage {
  final String title = "动态列表实现方式2";

  final List _listData = [
    {
      "title": "Candy Shop",
      "image": "images/a.jpg",
    },
    {
      "title": "Childhood in a picture",
      "image": "images/2.0x/a.jpg",
    },
    {
      "title": "Alibaba Shop",
      "image": "images/3.0x/a.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this._listData.length,
      itemBuilder: (context, index){
        var e = this._listData[index];
        return ListTile(
                title: Text(e["title"]),
                leading: Image.asset(e["image"]),
              );
      },
    );
  }
}

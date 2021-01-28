import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class GridExampleA extends ShowPage {
  final String title = "GridView的基本使用";

  List<Widget> _getData() {
    List<Widget> list = List();
    for(var i = 0; i < 5; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          child: Text("Grid $i"),
          color: Colors.blue,
          height: 100, // 在GridView中设置Container的height没用
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 3列
      crossAxisSpacing: 20,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7, // 子元素的宽高比
      children: this._getData(),
    );
  }
}


class GridExampleB extends ShowPage {
  final String title = "GridView 动态获取组件布局";

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
    {
      "title": "JinDo Shop",
      "image": "images/4.0x/a.jpg",
    },
  ];

  List<Widget> _getData() {
    var data = this._listData.map((e) => Container(
      child: Column(
        children: <Widget>[
          Image.asset(e["image"], fit: BoxFit.cover,),
          Text(e["title"])
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(233, 233, 233, 0.9))
      ),
    ));
    return data.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 3列
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: this._getData(),
    );
  }
}


class GridExampleC extends ShowPage {
  final String title = "GridView.builder的使用";
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
    {
      "title": "JinDo Shop",
      "image": "images/4.0x/a.jpg",
    },
  ];

  Widget _getData(context, index) {
    var e = this._listData[index];
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(e["image"], fit: BoxFit.cover,),
          Text(e["title"])
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(233, 233, 233, 0.9))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3列
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: this._listData.length,
      itemBuilder: (context, index) {
        return this._getData(context, index);
      },
    );
  }
}

class GridViewExamples extends ShowPage {

  final String title = "GridView";
  final String subtitle = "网格布局";
  final List<ShowPage> items = [
    GridExampleA(),
    GridExampleB(),
  ];
}

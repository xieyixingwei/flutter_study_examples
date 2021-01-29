import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class ColumnExampleA extends ShowPage {
  final String title = "Column 组件的使用";

  _container(double w, double h) =>
    Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: _container(50,80),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: _container(70,120),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: _container(150,100),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: _container(80,90),
        ),
      ],
    );
  }
}


class ColumnExampleB extends ShowPage {
  final String title = "Column和Row互相嵌套";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Text("AAAAAAAA"),
            Text("BBBBBBBB"),
            Column(
              children: [
                Text("CCCCCCCC"),
                Text("DDDDDDDD"),
              ],
            ),
            Text("EEEEEEE"),
          ],
        ),
      ],
    );
  }
}


class ColumnExamples extends ShowPage {
  final String image = "lib/widgets/Layout/images/Column.PNG";
  final String title = "Column";
  final String subtitle = "Colum组件和ListView的区别是ListView的宽度会铺满整个显示区域的宽度，而Colum组件的宽度是子元素的宽度";
  final List<ShowPage> items = [
    ColumnExampleA(),
    ColumnExampleB(),
  ];
}

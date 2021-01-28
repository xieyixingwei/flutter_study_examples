import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class RowExampleA extends ShowPage {
  final String title = "Row 基本使用";

  _child(double w, double h) => Container(
    width: w,
    height: h,
    decoration: BoxDecoration(
      color: Colors.orange,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _child(50,50),
        _child(80,150),
        _child(150,80),
        _child(60,120),
      ],
    );
  }
}

class RowExampleB extends ShowPage {
  final String title = "Row(Row)";

  _child(double w, double h) => Container(
    width: w,
    height: h,
    decoration: BoxDecoration(
      color: Colors.orange,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row (
          children: [
            _child(50,50),
            _child(150,80),
          ],
        ),
        Row (
          children: [
            _child(50,50),
            _child(60,120),
          ],
        ),
        _child(60,120),
        _child(80,150),
      ],
    );
  }
}


class RowExamples extends ShowPage {
  final String image = "lib/widgets/Layout/images/Row.PNG";
  final String title = "Row";
  final String subtitle = "Row的宽度随着父组件的宽度变化，Row的高度是内容的高度，Row的子元素的宽度不会自动拉伸";
  final List<ShowPage> items = [
    RowExampleA(),
    RowExampleB(),
  ];
}

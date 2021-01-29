import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


/// Expanded
class ExpandedExampleA extends ShowPage {
  final String title = "Expanded";

  _container(double w, double h, Color color) =>
    Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: color,
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2, // 占2份
          child: _container(20,50,Colors.pink),
        ),
        Expanded(
          flex: 1, // 占1份
          child: _container(60,100,Colors.green),
        ),
        _container(50,150,Colors.orange), // 本来宽度
      ],
    );
  }
}

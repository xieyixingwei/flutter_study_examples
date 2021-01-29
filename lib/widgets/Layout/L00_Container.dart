import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class ContainerExampleA extends ShowPage {
  final String image = "lib/widgets/Layout/images/Container.PNG";
  final String title = "Container";
  final String subtitle = "Container组件类似于HTML的<div>, 一个拥有绘制、定位、调整大小的 widget";

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Text("Container组件的使用"),
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                color: Colors.blue,
                width: 2
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              ),
            ),
            padding: EdgeInsets.fromLTRB(10, 30, 20, 15),
            //transform: Matrix4.translationValues(100, 0, 0),
            //transform: Matrix4.rotationZ(0.3),
            alignment: Alignment.topRight,
    );
  }
}

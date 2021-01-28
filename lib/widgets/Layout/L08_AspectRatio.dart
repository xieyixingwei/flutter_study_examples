import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class AspectRatioExampleA extends ShowPage {
  final String title = "AspectRatio";
  final String subtitle = "设置子组件的宽高比(相对于父元素)，主要用于使子元素铺满父元素";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.red,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,
        child: Container(
          color: Color.fromRGBO(12, 150, 120, 0.5)
        ),
      ),
    );
  }
}


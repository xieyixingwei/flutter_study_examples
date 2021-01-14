import 'package:flutter/material.dart';

/// AspectRatio组件可以设置子组件的宽高比（相对于父元素）
/// 主要用于使子元素铺满父元素
class MyAspectRatioA extends StatelessWidget {
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


class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatio 组件演示")),
      body: MyAspectRatioA()
    );
  }
}

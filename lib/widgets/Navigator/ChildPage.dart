import 'package:flutter/material.dart';


class ChildPageA extends StatelessWidget {
  const ChildPageA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Child Page A")),
      body: Text("这是子页面 A")
    );
  }
}


class ChildPageB extends StatelessWidget {
  final String _param;
  const ChildPageB({String param="",Key key})
    : this._param = param,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Child Page B")),
      body: Text("基础路由传递进来的参数: ${this._param}")
    );
  }
}

class ChildPageC extends StatelessWidget {
  const ChildPageC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Child Page C")),
      body: Text("这是子页面 C")
    );
  }
}

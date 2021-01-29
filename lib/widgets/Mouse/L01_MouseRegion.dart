import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';



class MouseRegionExampleA extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "MouseRegion 实例";

  MouseRegionExampleA({Key key}) : super(key: key);

  @override
  _MouseRegionStateExampleA createState() => _MouseRegionStateExampleA();
}

class _MouseRegionStateExampleA extends State<MouseRegionExampleA> {
  bool status = false;

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MouseRegion(
        onEnter: (e) => setState((){ status=true;}),
        onExit: (e)=> setState((){ status=false;}),
        child: status ? Text("hello") : Text("world"),
      );
    }
}



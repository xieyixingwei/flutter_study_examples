import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';

class SwitchExampleA extends StatefulWidget with ShowPage {
  final bool isStateless = false; // StatefulWidget组件需要设置isStateless为false
  final String title = "Switch SwitchListTile";

  SwitchExampleA({Key key})
    : super(key: key);

  @override
  _SwitchExampleA createState() => _SwitchExampleA();
}

class _SwitchExampleA extends State<SwitchExampleA> {
  List<bool> _switchValue = [false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Switch(
            value: this._switchValue[0],
            onChanged: (value) {
              setState(() {
                this._switchValue[0] = value;
              });
            },
          ),
          SwitchListTile(
            value: this._switchValue[1],
            title: Text("电视"),
            subtitle: Text("打开/关闭电视"),
            secondary: Image.asset("images/3.0x/a.jpg"),
            selected: this._switchValue[1],
            onChanged: (value) {
              setState(() {
                this._switchValue[1] = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

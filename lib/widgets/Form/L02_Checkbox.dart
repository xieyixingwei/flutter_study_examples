import 'package:flutter/material.dart';

class CheckBoxExampleA extends StatefulWidget {
  CheckBoxExampleA({Key key})
    : super(key: key);

  @override
  _CheckBoxExampleA createState() => _CheckBoxExampleA();
}

class _CheckBoxExampleA extends State<CheckBoxExampleA> {
  List<bool> _checkBoxValue = <bool>[true, false];

  // 生命周期函数
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5,),
          Checkbox(
            value: this._checkBoxValue[0],
            onChanged: (value) {
              print(value);
              setState(() {
                this._checkBoxValue[0] = value;
              });
            },
          ),
          CheckboxListTile(
            value: this._checkBoxValue[1],
            title: Text("未婚"),
            subtitle: Text("还没有结婚"),
            secondary: Icon(Icons.help),
            selected: this._checkBoxValue[1],
            onChanged: (value) {
              setState(() {
                this._checkBoxValue[1] = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

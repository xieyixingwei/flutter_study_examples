import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final String _title;
  FormPage({String title="没有传值", Key key})
    : this._title = title,
      super(key: key);

  @override
  _FormPageState createState() => _FormPageState(title: this._title);
}

class _FormPageState extends State<FormPage> {
  String _title;
  // TextEditingController来设置TextField的初始值
  var _inputText = TextEditingController();
  List<bool> _checkBoxValue = <bool>[true, false];
  List<int> _radioValue = [1, 2];
  List<bool> _switchValue = [false, true];

  _FormPageState({String title})
    : this._title = title;

  // 生命周期函数
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this._inputText.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormPage ${this._title}"),
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          TextField(
            maxLines: 3,
            controller: this._inputText,
            decoration: InputDecoration(
              hintText: "请输入",
              border: OutlineInputBorder(),
              suffix: RaisedButton(
                child: Text("获取值"),
                onPressed: () {
                  print(this._inputText.text);
                },
              ),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框",
              labelText: "密码",
              icon: Icon(Icons.lock_open),
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 1,
                groupValue: this._radioValue[0],
                onChanged: (value) {
                  print(value);
                  setState(() {
                    this._radioValue[0] = value;
                  });
                },
              ),
              Radio(
                value: 2,
                groupValue: this._radioValue[0],
                onChanged: (value) {
                  print(value);
                  setState(() {
                    this._radioValue[0] = value;
                  });
                },
              ),
            ],
          ),
          RadioListTile(
            value: 1,
            groupValue: this._radioValue[1],
            title: Text("男"),
            subtitle: Text("男人"),
            secondary: Icon(Icons.folder),
            selected: this._radioValue[1] == 1,
            onChanged: (value) {
              setState(() {
                this._radioValue[1] = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: this._radioValue[1],
            title: Text("女"),
            subtitle: Text("女人"),
            secondary: Image.asset("images/b.jpg"),
            selected: this._radioValue[1] == 2,
            onChanged: (value) {
              setState(() {
                this._radioValue[1] = value;
              });
            },
          ),
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
      // 浮动按钮自动位于右下角
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

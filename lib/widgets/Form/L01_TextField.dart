import 'package:flutter/material.dart';

class TextFieldExampleA extends StatefulWidget {
  final String _title;
  TextFieldExampleA({String title="没有传值", Key key})
    : this._title = title,
      super(key: key);

  @override
  _TextFieldExampleA createState() => _TextFieldExampleA(title: this._title);
}

class _TextFieldExampleA extends State<TextFieldExampleA> {
  String _title;
  // TextEditingController来设置TextField的初始值
  var _inputText = TextEditingController();


  _TextFieldExampleA({String title})
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
        ],
      ),
    );
  }
}

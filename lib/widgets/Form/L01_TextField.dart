import 'package:flutter/material.dart';

class TextFieldExampleA extends StatefulWidget {
  static String image = null;
  static String title = "TextField";
  static String subtitle = "";
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
          SizedBox(height: 10,),
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
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框",
              labelText: "密码",
              icon: Icon(Icons.lock_open),
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}


class TextFieldExampleB extends StatelessWidget {
  static String image = null;
  static String title = "Row(Expanded(TextField)) 实例";
  static String subtitle = "TextField不能直接放在Row里, 需要先用Expanded或者包裹后再放入TextField";

  _textField() => TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: _textField(),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 2,
            child: _textField(),
          ),
        ],
      ),
    );
  }
}


class TextFieldExampleC extends StatelessWidget {
  static String image = null;
  static String title = "Row(Expanded(Column(TextField))) 的使用";
  static String subtitle = "不能 Row(Column(TextField))和Row(Column(Expanded(TextField)))";

  _textField() => TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Row(
                children: [
                  Expanded(
                    child:Column(
                      children: [
                        _textField(),
                        SizedBox(height: 10,),
                        _textField(),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}


class TextFieldExampleD extends StatelessWidget {
  static String image = null;
  static String title = "Row(Column(SizedBox(width:100,TextField))) 的使用";
  static String subtitle = "";

  _textField() => TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 100,
                        child: _textField(),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 100,
                        child: _textField(),
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}

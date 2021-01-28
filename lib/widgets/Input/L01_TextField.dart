import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class TextFieldExampleA extends ShowPage {
  final String title = "TextField 基本使用实例";
  final String subtitle = "TextEditingController可以获取TextField的值";

  // 通过TextEditingController可以获取TextField的值
  final TextEditingController _inputText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _inputText.text = "初始值";
    return Column(
        children: [
          SizedBox(height: 10,),
          TextField(
            maxLines: 3,
            controller: _inputText,
            decoration: InputDecoration(
              hintText: "请输入",
              border: OutlineInputBorder(),
              suffix: RaisedButton(
                child: Text("获取值"),
                onPressed: () {
                  print(_inputText.text);
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
        ],
    );
  }
}


class TextFieldExampleB extends ShowPage {
  final String title = "Row(Expanded(TextField)) 布局";
  final String subtitle = "不能Row(TextField)";

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


class TextFieldExampleC extends ShowPage {
  final String title = "Row(Expanded(Column(TextField))) 布局";
  final String subtitle = "不能 Row(Column(TextField))和Row(Column(Expanded(TextField)))";

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


class TextFieldExampleD extends ShowPage {
  final String title = "Row(Column(SizedBox(width:500,TextField))) 布局";
  final String subtitle = "当TextField超过窗口的尺寸时会发生Layout Overfload错误!!";

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
                        width: 500,
                        child: _textField(),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 800,
                        child: _textField(),
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}


class TextFieldExampleE extends ShowPage {
  final String title = "Row(IntrinsicWidth(TextField)) 布局";
  final String subtitle = "当TextField超过窗口的尺寸时会发生Layout Overfload错误!!";

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
                      IntrinsicWidth(
                        child: _textField(),
                      ),
                      SizedBox(width: 50,),
                      IntrinsicWidth(
                        child: _textField(),
                      ),
                ],
              ),
            );
  }
}


class TextFieldExampleF extends ShowPage {
  final String title = "Sentence Pattern Input Widget";
  final String subtitle = "";

  _textField() => TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  );
  
  _deractor() => Expanded(
                  child: _textField(),
                );

  _deractorA() => Expanded(
                    child: _deractor(),
                    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Column(
              children: [
                //Text("Column(Row(Expanded(Column(TextField))))"),
                Row(
                  children: [
                    _deractorA(),
                    //_deractor(),
                  ],
                ),
                _deractorA(),
                _deractorA(),
              ],
            ),
          );
  }
}


class TextFieldExamples extends ShowPage {
  final String title = "TextField";
  final String subtitle = "文本输入";

  final List<ShowPage> items = [
    TextFieldExampleA(),
    TextFieldExampleB(),
    TextFieldExampleC(),
    TextFieldExampleD(),
    TextFieldExampleE(),
    TextFieldExampleF(),
  ];
}

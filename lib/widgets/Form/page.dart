import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_TextField.dart';
import './L02_Checkbox.dart';
import './L03_Radio.dart';
import './L04_Switch.dart';


class FormPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "TextField 组件的使用",
      "subtitle":"",
      "widget": TextFieldExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "CheckBox CheckboxListTile 组件的使用",
      "subtitle":"",
      "widget": CheckBoxExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Radio RadioListTile 组件的使用",
      "subtitle":"",
      "widget": RadioExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Switch SwitchListTile 组件的使用",
      "subtitle":"",
      "widget": SwitchExampleA(),
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "input组件的使用", configs:_configs);
  }
}

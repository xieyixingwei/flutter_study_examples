import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_TextField.dart';
import './L02_Checkbox.dart';
import './L03_Radio.dart';
import './L04_Switch.dart';


class FormPage extends StatelessWidget {
  final List _configs = [
    {
      "image":TextFieldExampleA.image ?? "images/fluter.PNG",
      "title": TextFieldExampleA.title,
      "subtitle":TextFieldExampleA.subtitle,
      "widget": TextFieldExampleA(),
    },
    {
      "image":TextFieldExampleB.image ?? "images/fluter.PNG",
      "title":TextFieldExampleB.title,
      "subtitle":TextFieldExampleB.subtitle,
      "widget": TextFieldExampleB(),
    },
    {
      "image":TextFieldExampleC.image ?? "images/fluter.PNG",
      "title":TextFieldExampleC.title,
      "subtitle":TextFieldExampleC.subtitle,
      "widget": TextFieldExampleC(),
    },
    {
      "image":TextFieldExampleD.image ?? "images/fluter.PNG",
      "title":TextFieldExampleD.title,
      "subtitle":TextFieldExampleD.subtitle,
      "widget": TextFieldExampleD(),
    },
    {
      "image":TextFieldExampleE.image ?? "images/fluter.PNG",
      "title":TextFieldExampleE.title,
      "subtitle":TextFieldExampleE.subtitle,
      "widget": TextFieldExampleE(),
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

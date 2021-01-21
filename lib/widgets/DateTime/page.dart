import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_showDatePicker.dart';


class DateTimePage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "showDatePicker showTimePicker 组件的使用",
      "subtitle":"",
      "widget": ShowDatePickerExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "DateTime组件的使用", configs:_configs);
  }
}

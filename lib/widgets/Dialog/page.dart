import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_AlertDialog.dart';
import './L02_SimpleDialog.dart';
import './L03_ModalBottomSheet.dart';
import './L04_CustomDialog.dart';
import './L05_Fluttertoast.dart';


class DialogPage extends StatelessWidget {
  final List _configs = [
    {
      "image":"images/fluter.PNG",
      "title": "AlertDialog",
      "subtitle":"",
      "widget": AlertDialogExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "SimpleDialog",
      "subtitle":"",
      "widget": SimpleDialogExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "ModalBottomSheet",
      "subtitle":"",
      "widget": ModalBottomSheetExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "自定义Dialog",
      "subtitle":"",
      "widget": CustomDialogExampleA(),
    },
    {
      "image":"images/fluter.PNG",
      "title": "Fluttertoast",
      "subtitle":"",
      "widget": FluttertoastExampleA(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ShowWidgetComponent(title: "Dialog 组件使用", configs:_configs);
  }
}

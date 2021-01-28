import 'package:flutter/material.dart';
import 'dart:async';

import 'package:helloworld/components/ShowWidgetComponent.dart';


class SimpleDialogExampleA extends ShowPage {
  final String title = "SimpleDialog";
  void _simpleDialog(BuildContext context) async {
    var res = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("SimpleDialog"),
          children: [
            SimpleDialogOption(
              child: Text("option A"),
              onPressed: () {
                print("A");
                // 关闭dialog 并传值出去
                Navigator.pop(context, "A");
              }
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option B"),
              onPressed: () {
                print("B");
                Navigator.pop(context, "B");
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option C"),
              onPressed: () {
                print("C");
                Navigator.pop(context, "C");
              },
            ),
          ],
        );
      },
    );

    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
             child: Text("SimpleDialog"),
             onPressed: () {
               _simpleDialog(context);
             },
           ),);
  }
}

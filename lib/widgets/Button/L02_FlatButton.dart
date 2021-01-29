import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowPage.dart';


class FlatButtonExampleA extends ShowPage {
  final String title = "FlatButton";
  @override
  Widget build(BuildContext context) {
    return FlatButton(
            child: Text("FlatButton"),
            onPressed: () {
            },
          );
  }
}

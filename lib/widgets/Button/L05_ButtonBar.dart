import 'package:flutter/material.dart';
import 'package:helloworld/components/ShowWidgetComponent.dart';


class ButtonBarExampleA extends ShowPage {
  final String title = "ButtonBar";
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("ButtonBar 1"),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("ButtonBar 2"),
                onPressed: () {
                  
                },
              )
            ],
          );
  }
}

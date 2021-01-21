import 'package:flutter/material.dart';


class ButtonBarExampleA extends StatelessWidget {
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

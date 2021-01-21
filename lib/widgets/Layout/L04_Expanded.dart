import 'package:flutter/material.dart';
import 'package:helloworld/components/MyIcon.dart';


/// Expanded
class ExpandedExampleA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2, // 占2份
          child: MyIcon(Icons.home, color: Colors.yellow,),
        ),
        Expanded(
          flex: 1, // 占1份
          child: MyIcon(Icons.search, color: Colors.blue),
        ),
        MyIcon(Icons.pages, color: Colors.green), // 本来宽度
      ],
    );
  }
}

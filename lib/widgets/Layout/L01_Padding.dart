import 'package:flutter/material.dart';


/// Padding 的使用
class PaddingExampleA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.7,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset("images/a.jpg", fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
